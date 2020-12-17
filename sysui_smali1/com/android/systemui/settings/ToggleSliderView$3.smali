.class Lcom/android/systemui/settings/ToggleSliderView$3;
.super Ljava/lang/Object;
.source "ToggleSliderView.java"

# interfaces
.implements Lcom/android/systemui/settings/ToggleSeekBar$OnSeekBarTrackingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/settings/ToggleSliderView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/settings/ToggleSliderView;


# direct methods
.method constructor <init>(Lcom/android/systemui/settings/ToggleSliderView;)V
    .registers 2

    .line 233
    iput-object p1, p0, Lcom/android/systemui/settings/ToggleSliderView$3;->this$0:Lcom/android/systemui/settings/ToggleSliderView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStartTrackingTouch()V
    .registers 8

    .line 236
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSliderView$3;->this$0:Lcom/android/systemui/settings/ToggleSliderView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/systemui/settings/ToggleSliderView;->access$202(Lcom/android/systemui/settings/ToggleSliderView;Z)Z

    .line 238
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSliderView$3;->this$0:Lcom/android/systemui/settings/ToggleSliderView;

    invoke-static {v0}, Lcom/android/systemui/settings/ToggleSliderView;->access$100(Lcom/android/systemui/settings/ToggleSliderView;)Lcom/android/systemui/settings/ToggleSlider$Listener;

    move-result-object v0

    if-eqz v0, :cond_32

    .line 239
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSliderView$3;->this$0:Lcom/android/systemui/settings/ToggleSliderView;

    invoke-static {v0}, Lcom/android/systemui/settings/ToggleSliderView;->access$100(Lcom/android/systemui/settings/ToggleSliderView;)Lcom/android/systemui/settings/ToggleSlider$Listener;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/settings/ToggleSliderView$3;->this$0:Lcom/android/systemui/settings/ToggleSliderView;

    invoke-static {v2}, Lcom/android/systemui/settings/ToggleSliderView;->access$200(Lcom/android/systemui/settings/ToggleSliderView;)Z

    move-result v3

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSliderView$3;->this$0:Lcom/android/systemui/settings/ToggleSliderView;

    invoke-static {v0}, Lcom/android/systemui/settings/ToggleSliderView;->access$400(Lcom/android/systemui/settings/ToggleSliderView;)Landroid/widget/CompoundButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v4

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSliderView$3;->this$0:Lcom/android/systemui/settings/ToggleSliderView;

    .line 240
    invoke-static {v0}, Lcom/android/systemui/settings/ToggleSliderView;->access$000(Lcom/android/systemui/settings/ToggleSliderView;)Lcom/android/systemui/settings/ToggleSeekBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v5

    const/4 v6, 0x0

    .line 239
    invoke-interface/range {v1 .. v6}, Lcom/android/systemui/settings/ToggleSlider$Listener;->onChanged(Lcom/android/systemui/settings/ToggleSlider;ZZIZ)V

    .line 243
    :cond_32
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSliderView$3;->this$0:Lcom/android/systemui/settings/ToggleSliderView;

    invoke-static {v0}, Lcom/android/systemui/settings/ToggleSliderView;->access$400(Lcom/android/systemui/settings/ToggleSliderView;)Landroid/widget/CompoundButton;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 245
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSliderView$3;->this$0:Lcom/android/systemui/settings/ToggleSliderView;

    invoke-static {v0}, Lcom/android/systemui/settings/ToggleSliderView;->access$500(Lcom/android/systemui/settings/ToggleSliderView;)Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    move-result-object v0

    if-eqz v0, :cond_67

    .line 247
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSliderView$3;->this$0:Lcom/android/systemui/settings/ToggleSliderView;

    invoke-static {v0}, Lcom/android/systemui/settings/ToggleSliderView;->access$000(Lcom/android/systemui/settings/ToggleSliderView;)Lcom/android/systemui/settings/ToggleSeekBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/systemui/settings/ToggleSeekBar;->disableVerticalSeek(Z)V

    .line 248
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSliderView$3;->this$0:Lcom/android/systemui/settings/ToggleSliderView;

    invoke-static {v0}, Lcom/android/systemui/settings/ToggleSliderView;->access$500(Lcom/android/systemui/settings/ToggleSliderView;)Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->showMirror()V

    .line 249
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSliderView$3;->this$0:Lcom/android/systemui/settings/ToggleSliderView;

    invoke-static {v0}, Lcom/android/systemui/settings/ToggleSliderView;->access$500(Lcom/android/systemui/settings/ToggleSliderView;)Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSliderView$3;->this$0:Lcom/android/systemui/settings/ToggleSliderView;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->setLocation(Landroid/view/View;)V

    .line 252
    :cond_67
    iget-object p0, p0, Lcom/android/systemui/settings/ToggleSliderView$3;->this$0:Lcom/android/systemui/settings/ToggleSliderView;

    invoke-static {p0}, Lcom/android/systemui/settings/ToggleSliderView;->access$600(Lcom/android/systemui/settings/ToggleSliderView;)Landroid/content/Context;

    return-void
.end method
