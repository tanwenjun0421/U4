package k9509.Service.impl;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import k9509.Service.DemoService;
import k9509.domain.Entry;
import k9509.domain.EntryExample;
import k9509.mapper.EntryMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class DemoServiceImpl implements DemoService {

    @Autowired
    private EntryMapper entryMapper;


    @Override
    public List<Entry> findAllEntry() {
        return entryMapper.queryAllEntry();
    }

    @Override
    public List<Entry> findAllEntry2() {
        EntryExample entryExample = new EntryExample();
        return entryMapper.selectByExample(entryExample);
    }

    @Override
    public PageInfo<Entry> findAllEntry3(Integer pageNum, Integer pageSize) {
        PageHelper.startPage(pageNum,pageSize);
        EntryExample entryExample = new EntryExample();
        List<Entry> entryList = entryMapper.selectByExample(entryExample);
        PageInfo<Entry> pageInfo = new PageInfo<>(entryList);
        return pageInfo;
    }
}
