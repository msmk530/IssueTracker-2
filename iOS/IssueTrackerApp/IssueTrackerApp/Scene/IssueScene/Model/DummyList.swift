//
//  IssueList.swift
//  IssueTrackerApp
//
//  Created by 서명렬 on 2020/10/27.
//

import Foundation

struct DummyList: Hashable {
  
  var comments: [Comment] = [Comment(id: 0, writerId: 2, description: "첫번째 댓글입니다.", createAt: "15분 전"), Comment(id: 1, writerId: 1, description: "두번째 댓글입니다.", createAt: "1시간 전")]
  
  var dummyUsers: [User] = [
    User(id: 0, name: "songjucho", password: "12345", profileImageUrl: ""),
    User(id: 1, name: "zlrlo", password: "12345", profileImageUrl: ""),
    User(id: 2, name: "fElix-MR", password: "12345", profileImageUrl: ""),
    User(id: 3, name: "puba5", password: "12345", profileImageUrl: ""),
    User(id: 4, name: "msmk530", password: "12345", profileImageUrl: ""),
  ]
  
  var dummyLabels: [Label] = [
    Label(id: 0, labelName: "iOS", color: "#00BFFF", labelDescription: "iOS 개발 관련 레이블"),
    Label(id: 1, labelName: "Backend", color: "#B40486", labelDescription: "백엔드 개발 관련 레이블"),
    Label(id: 2, labelName: "Frontend", color: "#000000", labelDescription: "프론트엔드 개발 관련 레이블"),
    Label(id: 3, labelName: "bug", color: "#5858FA", labelDescription: "작동하지 않는 문제"),
    Label(id: 4, labelName: "invalid", color: "#01DF3A", labelDescription: "유효하지 않은 문제"),
    Label(id: 5, labelName: "UI", color: "#01DF3A", labelDescription: "UI 관련 레이블"),
    Label(id: 6, labelName: "enhancement", color: "#01DF3A", labelDescription: "새로운 feature나 request"),
  ]
  
  var dummyMilestones: [Milestone] = [
    Milestone(id: 0, milestoneName: "스프린트 1", milestoneDescription: "이번 배포를 위한 스프린트", endDate: "2020-11-01", status: 0, openCount: 2, closeCount: 4),
    Milestone(id: 1, milestoneName: "스프린트 2", milestoneDescription: "이번 배포를 위한 스프린트", endDate: "2020-11-02", status: 1, openCount: 5, closeCount: 22),
    Milestone(id: 2, milestoneName: "마지막 스프린트", milestoneDescription: "이번 배포를 위한 마지막 스프린트", endDate: "2020-11-11", status: 0, openCount: 7, closeCount: 8),
    Milestone(id: 3, milestoneName: "NewWeek1", milestoneDescription: "새로운 마일스톤", endDate: "2020-11-30", status: 0, openCount: 3, closeCount: 29)
  
  ]
  
  var dummyIssues: [Issue]
  
  init() {
    var milestone =
      Milestone(id: 0, milestoneName: "스프린트 1", milestoneDescription: "이번 배포를 위한 스프린트", endDate: "2020-11-01", status: 0, openCount: 2, closeCount: 7)
    
    self.dummyIssues = [
      Issue(id: 0, userSid: 0, issueName: "레이블 목록보기 구현", issueAuthor: "songjucho", comment: comments, label: dummyLabels, milestone: milestone, issueStatus: true, assignee: [0, 2, 1]),
      Issue(id: 1, userSid: 2, issueName: "마일스톤 목록", issueAuthor: "fElix-MR", comment: comments, label: dummyLabels, milestone: milestone, issueStatus: true, assignee: [0, 2, 1]),
      Issue(id: 2, userSid: 1, issueName: "이슈 모델 구현", issueAuthor: "zlrlo", comment: comments, label: dummyLabels, milestone: milestone, issueStatus: true, assignee: [0, 2, 1]),
      Issue(id: 3, userSid: 3, issueName: "Issue API", issueAuthor: "puba5", comment: comments, label: dummyLabels, milestone: milestone, issueStatus: true, assignee: [0, 2, 1]),
      Issue(id: 4, userSid: 0, issueName: "마크다운뷰 UI 구성", issueAuthor: "songjucho", comment: comments, label: dummyLabels, milestone: milestone, issueStatus: true, assignee: [0, 2, 1]),
      Issue(id: 5, userSid: 2, issueName: "특정 레이블 가져오기", issueAuthor: "fElix-MR", comment: comments, label: dummyLabels, milestone: milestone, issueStatus: true, assignee: [0, 2, 1]),
      Issue(id: 6, userSid: 1, issueName: "마일스톤 조회 화면 API 연동", issueAuthor: "zlrlo", comment: comments, label: dummyLabels, milestone: milestone, issueStatus: true, assignee: [0, 2, 1]),
      Issue(id: 7, userSid: 0, issueName: "저장 Button", issueAuthor: "songjucho", comment: comments, label: dummyLabels, milestone: milestone, issueStatus: true, assignee: [0, 2, 1]),
      Issue(id: 8, userSid: 4, issueName: "레이블 업데이트 UI 구성", issueAuthor: "msmk530", comment: comments, label: dummyLabels, milestone: milestone, issueStatus: true, assignee: [0, 2, 1]),
      Issue(id: 9, userSid: 3, issueName: "description 마크다운 변환", issueAuthor: "puba5", comment: comments, label: dummyLabels, milestone: milestone, issueStatus: true, assignee: [0, 2, 1]),
      Issue(id: 10, userSid: 3, issueName: "로그인 상태 유무에 따른 라우팅 작업", issueAuthor: "puba5", comment: comments, label: dummyLabels, milestone: milestone, issueStatus: true, assignee: [0, 2, 1]),
      Issue(id: 11, userSid: 1, issueName: "레이블 페이지 마크업", issueAuthor: "zlrlo", comment: comments, label: dummyLabels, milestone: milestone, issueStatus: true, assignee: [0, 2, 1]),
      Issue(id: 12, userSid: 0, issueName: "데이터베이스 스키마 구현", issueAuthor: "songjucho", comment: comments, label: dummyLabels, milestone: milestone, issueStatus: true, assignee: [0, 2, 1]),
      Issue(id: 13, userSid: 2, issueName: "공통 컴포넌트 작업", issueAuthor: "fElix-MR", comment: comments, label: dummyLabels, milestone: milestone, issueStatus: true, assignee: [0, 2, 1])
    ]
    
    UserDefaults.standard.set(dummyLabels.count, forKey: "labelId")
    UserDefaults.standard.set(dummyMilestones.count, forKey: "milestoneId")
    UserDefaults.standard.set(dummyIssues.count, forKey: "issueId")
    UserDefaults.standard.set(comments.count, forKey: "commentsID")
  }
  
  func getUser(withID id: Int) -> User? {
    for user in dummyUsers {
      if user.id == id {
        return user
      }
    }
    return nil
  }
}