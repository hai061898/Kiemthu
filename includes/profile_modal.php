
<div class="modal fade" id="transaction">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">&times;</span></button>
              <h4 class="modal-title"><b>Chi tiết giao dịch</b></h4>
            </div>
            <div class="modal-body">
              <p>
                Ngày: <span id="date"></span>
                <span class="pull-right">Giao Dịch: <span id="transid"></span></span> 
              </p>
              <table class="table table-bordered">
                <thead>
                  <th>Sản Phẩm</th>
                  <th>Giá</th>
                  <th>Số Lượng</th>
                  <th>Subtotal</th>
                </thead>
                <tbody id="detail">
                  <tr>
                    <td colspan="3" align="right"><b>Tổng</b></td>
                    <td><span id="total"></span></td>
                  </tr>
                </tbody>
              </table>
            </div>
            <div class="modal-footer">
              <button type="button" class="btn btn-default btn-flat pull-left" data-dismiss="modal"><i class="fa fa-close"></i> Đóng</button>
            </div>
        </div>
    </div>
</div>

<!-- sửu thông tin -->
<div class="modal fade" id="edit">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">&times;</span></button>
              <h4 class="modal-title"><b>Cập nhật Tài khoản</b></h4>
              <h5><i>Mọi thông tin muốn được sửa cần phải nhập lại mật khẩu</i><h5>
            </div>
            <div class="modal-body">
              <form class="form-horizontal" method="POST" action="profile_edit.php" enctype="multipart/form-data">
                <div class="form-group">
                    <label for="firstname" class="col-sm-3 control-label">Họ</label>

                    <div class="col-sm-9">
                      <input type="text" class="form-control" id="firstname" name="firstname" value="<?php echo $user['firstname']; ?>">
                    </div>
                </div>
                <div class="form-group">
                    <label for="lastname" class="col-sm-3 control-label">Tên</label>

                    <div class="col-sm-9">
                      <input type="text" class="form-control" id="lastname" name="lastname" value="<?php echo $user['lastname']; ?>">
                    </div>
                </div>
                <div class="form-group">
                    <label for="email" class="col-sm-3 control-label">Email</label>

                    <div class="col-sm-9">
                      <input type="text" class="form-control" id="email" name="email" value="<?php echo $user['email']; ?>">
                    </div>
                </div>
                <div class="form-group">
                    <label for="password" class="col-sm-3 control-label">Mật khẩu</label>

                    <div class="col-sm-9">
                      <input type="password" class="form-control" id="password" name="password" value="<?php echo $user['password']; ?>">
                    </div>
                </div>
                <div class="form-group">
                    <label for="contact" class="col-sm-3 control-label">Số điện thoại</label>

                    <div class="col-sm-9">
                      <input type="text" class="form-control" id="contact" name="contact" value="<?php echo $user['contact_info']; ?>">
                    </div>
                </div>
                <div class="form-group">
                    <label for="address" class="col-sm-3 control-label">Địa chỉ</label>

                    <div class="col-sm-9">
                      <textarea class="form-control" id="address" name="address"><?php echo $user['address']; ?></textarea>
                    </div>
                </div>
                <div class="form-group">
                    <label for="photo" class="col-sm-3 control-label">Ảnh</label>

                    <div class="col-sm-9">
                      <input type="file" id="photo" name="photo">
                    </div>
                </div>
                <hr>
                
                <div class="form-group">
                    <label for="curr_password" class="col-sm-3 control-label">Nhập lại mật khẩu</label>

                    <div class="col-sm-9">
                      <input type="password" class="form-control" id="curr_password" name="curr_password" placeholder="" required>
                    </div>
                </div>
            </div>
            <div class="modal-footer">
              <button type="button" class="btn btn-default btn-flat pull-left" data-dismiss="modal"><i class="fa fa-close"></i> Đóng</button>
              <button type="submit" class="btn btn-success btn-flat" name="edit"><i class="fa fa-check-square-o"></i> Cập nhật</button>
              </form>
            </div>
        </div>
    </div>
</div>