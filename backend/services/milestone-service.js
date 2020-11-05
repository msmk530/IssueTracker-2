const milestones = require('../models/milestones');

exports.updateMilestone = async req => {
  try {
    const insertId = await milestones.update(req.body);

    return { status: 200, message: '마일스톤 업데이트 성공', insertId };
  } catch {
    return { status: 400, message: '마일스톤 업데이트 실패' };
  }
};
