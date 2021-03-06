import React, { useState } from 'react';
import styled from 'styled-components';

import IssueTitle from './IssueTitle';
import Tab from './Tab';
import CommentInput from './CommentInput';
import SubmitButton from '../Common/GreenButton';
import CancelButton from './CancelButton';
import { useHistory } from 'react-router-dom';
import { postFetch } from '../../service/fetch';

export default ({ userInfo }) => {
  const [tabType, setTabType] = useState('write');
  const [issueName, setIssueName] = useState('');
  const [content, setContent] = useState('');

  const history = useHistory();

  const onClickSubmitButton = async () => {
    await postFetch(`${process.env.SERVER_URL}/api/issue`, {
      user_sid: userInfo.id,
      issue_content: content,
      issue_name: issueName,
      milestone_id: 2,
      issue_status: 0,
      assignee_id: 2,
      labelArray: [3, 4],
      assigneeArray: [1, 2],
    });
    history.push('/issues');
  };

  return (
    <Form>
      <IssueTitle setIssueName={setIssueName} />
      <Tab tabType={tabType} setTabType={setTabType} />
      <Line />
      <CommentInput
        tabType={tabType}
        setContent={setContent}
        content={content}
      />
      <FileAttachMessage>
        Attach files by dragging & droppping, selecting or pasting then.
      </FileAttachMessage>
      <ButtonWrap>
        <CancelButton />
        <SubmitButton
          onClick={onClickSubmitButton}
          content="Submit new issue"
        />
      </ButtonWrap>
    </Form>
  );
};

const Form = styled.div`
  display: flex;
  flex-direction: column;
  border: 1px solid #e1e4e8;
  height: 430px;
  width: 100%;
  border-radius: 6px;
`;

const Line = styled.div`
  border-top: 1px solid #e1e4e8;
  z-index: -1;
`;

const ButtonWrap = styled.div`
  display: flex;
  justify-content: space-between;
  margin: 8px;
  margin-top: 0;
`;

const FileAttachMessage = styled.div`
  box-sizing: border-box;
  border: 1px solid #e1e4e8;
  border-top: 1px dashed #e1e4e8;
  border-bottom-left-radius: 6px;
  border-bottom-right-radius: 6px;
  padding: 5px;
  margin: 8px;
  margin-top: 0px;
  font-size: 14px;
  color: #586069;
`;
