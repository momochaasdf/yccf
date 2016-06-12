 
package com.deying.core.service.user;

import java.io.Serializable;
import java.util.List;

import com.deying.core.pojo.user.ComDict;
import com.deying.util.core.com.framework.hibernate3.GenericServer;

public interface DictService<T extends Serializable, PK extends Serializable> extends GenericServer<T, PK> {

}
