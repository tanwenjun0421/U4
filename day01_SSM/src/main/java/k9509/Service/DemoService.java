package k9509.Service;

import com.github.pagehelper.PageInfo;
import k9509.domain.Entry;

import java.util.List;

public interface DemoService {

    List<Entry> findAllEntry();

    List<Entry> findAllEntry2();

    PageInfo<Entry> findAllEntry3(Integer pageNum,Integer pageSize);
}
