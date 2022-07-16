package org.vikinc.community.mapper;

import org.apache.ibatis.annotations.Mapper;
import org.vikinc.community.dto.Question;

import java.util.List;

@Mapper
public interface QuestionMapper {
    //获取所有列表
    List<Question> getALLList();
    //创建 发布问题
    void CreateQuestion(Question question);
}
