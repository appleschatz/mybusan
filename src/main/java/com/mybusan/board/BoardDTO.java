package com.mybusan.board;

public class BoardDTO {
	
   private int ce_sequence;	
   // 업적 글 번호 
   private String ce_name;
   //업적명 
   private String ce_content;	
   //업적내용
   private String ce_review;
   //업적달성후기 
   private long ce_filename;
	
   //업적 사진 파일

	public BoardDTO() {}

	/**
	 * @return the ce_sequence
	 */
	public int getCe_sequence() {
		return ce_sequence;
	}

	/**
	 * @param ce_sequence the ce_sequence to set
	 */
	public void setCe_sequence(int ce_sequence) {
		this.ce_sequence = ce_sequence;
	}

	/**
	 * @return the ce_name
	 */
	public String getCe_name() {
		return ce_name;
	}

	/**
	 * @param ce_name the ce_name to set
	 */
	public void setCe_name(String ce_name) {
		this.ce_name = ce_name;
	}

	/**
	 * @return the ce_content
	 */
	public String getCe_content() {
		return ce_content;
	}

	/**
	 * @param ce_content the ce_content to set
	 */
	public void setCe_content(String ce_content) {
		this.ce_content = ce_content;
	}

	/**
	 * @return the ce_review
	 */
	public String getCe_review() {
		return ce_review;
	}

	/**
	 * @param ce_review the ce_review to set
	 */
	public void setCe_review(String ce_review) {
		this.ce_review = ce_review;
	}

	/**
	 * @return the ce_filename
	 */
	public long getCe_filename() {
		return ce_filename;
	}

	/**
	 * @param ce_filename the ce_filename to set
	 */
	public void setCe_filename(long ce_filename) {
		this.ce_filename = ce_filename;
	}

	@Override
	public String toString() {
		return "boardDTO [ce_sequence=" + ce_sequence + ", ce_name=" + ce_name + ", ce_content=" + ce_content
				+ ", ce_review=" + ce_review + ", ce_filename=" + ce_filename + "]";
	}
	
}