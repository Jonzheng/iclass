package org.zyh.iclass.model;

public class CmsException extends RuntimeException {

	/**
	 * 
	 */
	private static final long serialVersionUID = -1991963501799605217L;

	public CmsException() {
		super();
	}

	public CmsException(String arg0, Throwable arg1, boolean arg2, boolean arg3) {
		super(arg0, arg1, arg2, arg3);
	}

	public CmsException(String arg0, Throwable arg1) {
		super(arg0, arg1);
	}

	public CmsException(String arg0) {
		super(arg0);
	}

	public CmsException(Throwable arg0) {
		super(arg0);
	}

}
