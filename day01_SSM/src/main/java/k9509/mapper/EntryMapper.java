package k9509.mapper;

import java.util.List;
import k9509.domain.Entry;
import k9509.domain.EntryExample;
import org.apache.ibatis.annotations.Select;

public interface EntryMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Entry record);

    int insertSelective(Entry record);

    List<Entry> selectByExample(EntryExample example);

    Entry selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Entry record);

    int updateByPrimaryKey(Entry record);

    @Select("select * from entry")
    List<Entry> queryAllEntry();
}