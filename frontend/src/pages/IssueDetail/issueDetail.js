import React from 'react';
import styled from 'styled-components';
import { useParams } from 'react-router-dom';
import Footer from '../../components/Common/Footer';
import Header from '../../components/Common/Header';
import IssueInfo from '../../components/IssueDetail/issueInfo';
import CommentForm from '../../components/IssueCreation/CommentForm';
import Sidebar from '../../components/IssueCreation/Sidebar';
import Profile from '../../components/IssueCreation/Profile';
import Comments from '../../components/IssueDetail/comment';

const IssueDetail = props => {
  const { id } = useParams();

  return (
    <>
      <Header />
      <IssueInfo issueNumber={id} />
      <CommentBody>
        <IssueCommentWrap>
          <Comment>
            <Profile />
            <Comments />
          </Comment>
          <Comment>
            <Profile />
            <Comments />
          </Comment>
          <WriteArea>
            <Profile />
            <CommentForm />
          </WriteArea>
        </IssueCommentWrap>
        <SelectArea>
          <Sidebar />
          <Sidebar />
          <Sidebar />
        </SelectArea>
      </CommentBody>
      <Footer />
    </>
  );
};

const CommentBody = styled.div`
  width: 90%;
  display: flex;
  height: 700px;
  margin: auto;
`;
const IssueCommentWrap = styled.div`
  display: flex;
  flex-direction: column;
  width: 80%;
`;
const Comment = styled.div`
  display: flex;
  width: 100%;
  margin-bottom: 2em;
`;
const WriteArea = styled.div`
  margin-top: 2em;
  border-top: 1px solid rgba(0, 0, 0, 0.3);
  padding: 2em 0;
  display: flex;
  width: 100%;
`;

const SelectArea = styled.div`
  margin-left: 20px;
`;

export default IssueDetail;
