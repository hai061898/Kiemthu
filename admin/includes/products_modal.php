
<div class="modal fade" id="description">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">&times;</span></button>
              <h4 class="modal-title"><b><span class="name"></span></b></h4>
            </div>
            <div class="modal-body">
                <p id="desc"></p>
            </div>
            <div class="modal-footer">
              <button type="button" class="btn btn-default btn-flat pull-left" data-dismiss="modal"><i class="fa fa-close"></i> Đóng</button>
            </div>
        </div>
    </div>
</div>


<div class="modal fade" id="addnew">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">&times;</span></button>
              <h4 class="modal-title"><b>Thêm Sản Phẩm</b></h4>
            </div>
            <div class="modal-body">
              <form class="form-horizontal" method="POST" action="products_add.php" enctype="multipart/form-data">
                <div class="form-group">
                  <label for="name" class="col-sm-1 control-label">Tên</label>

                  <div class="col-sm-5">
                    <input type="text" class="form-control" id="name" name="name" required>
                  </div>

                  <label for="category" class="col-sm-1 control-label">Nhãn Hiệu</label>
                  

                  <div class="col-sm-5">
                    <select class="form-control" id="category" name="category" required>
                      <option value="" selected>- Mục -</option>
                    </select>
                  </div>
                </div>
                <div class="form-group">
                  <label for="price" class="col-sm-1 control-label">Giá</label>
                  

                  <div class="col-sm-5">
                  
                    <input type="text" class="form-control" id="price" name="price" required>
                  </div>

                  <label for="photo" class="col-sm-1 control-label">Ảnh</label>
                  

                  <div class="col-sm-5">
                    <input type="file" id="photo" name="photo">
                  </div>
                </div>
                <br/>
                <p><b>Ngày	&#10;	<input type="date"  name="date"></b></p>
                <p><b>Số Lượng	&#10;<input type="text"  name="counter"></b></p>
                <p><b>Mô Tả</b></p>
                <div class="form-group">
                  <div class="col-sm-12">
                    <textarea id="editor1" name="description" rows="10" cols="80" required></textarea>
                  </div>
                  
                </div>
            </div>
            <div class="modal-footer">
              <button type="button" class="btn btn-default btn-flat pull-left" data-dismiss="modal"><i class="fa fa-close"></i> Đóng</button>
              <button type="submit" class="btn btn-primary btn-flat" name="add"><i class="fa fa-save"></i> Lưu</button>
              </form>
            </div>
        </div>
    </div>
</div>


<div class="modal fade" id="edit_photo">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">&times;</span></button>
              <h4 class="modal-title"><b><span class="name"></span></b></h4>
            </div>
            <div class="modal-body">
              <form class="form-horizontal" method="POST" action="products_photo.php" enctype="multipart/form-data">
                <input type="hidden" class="prodid" name="id">
                <div class="form-group">
                    <label for="photo" class="col-sm-3 control-label">Ảnh</label>

                    <div class="col-sm-9">
                      <input type="file" id="photo" name="photo" required>
                    </div>
                </div>
            </div>
            <div class="modal-footer">
              <button type="button" class="btn btn-default btn-flat pull-left" data-dismiss="modal"><i class="fa fa-close"></i> Đóng</button>
              <button type="submit" class="btn btn-success btn-flat" name="upload"><i class="fa fa-check-square-o"></i> Cập nhật</button>
              </form>
            </div>
        </div>
    </div>
</div>