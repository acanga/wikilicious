$(function()
{
  $(':input:visible:not(:submit, :button)').live('focus', function()
  {
    $(this).addClass('active');
  });

  $(':input:visible:not(:submit, :button)').live('blur', function()
  {
    $(this).removeClass('active');
    $(this).val($(this).val().trim());
  });

  $(':input:visible:not(:submit, :button)').first().focus();
});