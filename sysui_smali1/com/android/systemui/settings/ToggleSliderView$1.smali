.class Lcom/android/systemui/settings/ToggleSliderView$1;
.super Ljava/lang/Object;
.source "ToggleSliderView.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


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

    .line 162
    iput-object p1, p0, Lcom/android/systemui/settings/ToggleSliderView$1;->this$0:Lcom/android/systemui/settings/ToggleSliderView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 9

    .line 165
    iget-object p1, p0, Lcom/android/systemui/settings/ToggleSliderView$1;->this$0:Lcom/android/systemui/settings/ToggleSliderView;

    invoke-static {p1}, Lcom/android/systemui/settings/ToggleSliderView;->access$000(Lcom/android/systemui/settings/ToggleSliderView;)Lcom/android/systemui/settings/ToggleSeekBar;

    move-result-object p1

    xor-int/lit8 v0, p2, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 167
    iget-object p1, p0, Lcom/android/systemui/settings/ToggleSliderView$1;->this$0:Lcom/android/systemui/settings/ToggleSliderView;

    invoke-static {p1}, Lcom/android/systemui/settings/ToggleSliderView;->access$100(Lcom/android/systemui/settings/ToggleSliderView;)Lcom/android/systemui/settings/ToggleSlider$Listener;

    move-result-object p1

    if-eqz p1, :cond_2e

    .line 168
    iget-object p1, p0, Lcom/android/systemui/settings/ToggleSliderView$1;->this$0:Lcom/android/systemui/settings/ToggleSliderView;

    invoke-static {p1}, Lcom/android/systemui/settings/ToggleSliderView;->access$100(Lcom/android/systemui/settings/ToggleSliderView;)Lcom/android/systemui/settings/ToggleSlider$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSliderView$1;->this$0:Lcom/android/systemui/settings/ToggleSliderView;

    .line 169
    invoke-static {v1}, Lcom/android/systemui/settings/ToggleSliderView;->access$200(Lcom/android/systemui/settings/ToggleSliderView;)Z

    move-result v2

    iget-object p1, p0, Lcom/android/systemui/settings/ToggleSliderView$1;->this$0:Lcom/android/systemui/settings/ToggleSliderView;

    invoke-static {p1}, Lcom/android/systemui/settings/ToggleSliderView;->access$000(Lcom/android/systemui/settings/ToggleSliderView;)Lcom/android/systemui/settings/ToggleSeekBar;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v4

    const/4 v5, 0x0

    move v3, p2

    .line 168
    invoke-interface/range {v0 .. v5}, Lcom/android/systemui/settings/ToggleSlider$Listener;->onChanged(Lcom/android/systemui/settings/ToggleSlider;ZZIZ)V

    .line 172
    :cond_2e
    iget-object p1, p0, Lcom/android/systemui/settings/ToggleSliderView$1;->this$0:Lcom/android/systemui/settings/ToggleSliderView;

    invoke-static {p1}, Lcom/android/systemui/settings/ToggleSliderView;->access$300(Lcom/android/systemui/settings/ToggleSliderView;)Lcom/android/systemui/settings/ToggleSliderView;

    move-result-object p1

    if-eqz p1, :cond_43

    .line 173
    iget-object p0, p0, Lcom/android/systemui/settings/ToggleSliderView$1;->this$0:Lcom/android/systemui/settings/ToggleSliderView;

    invoke-static {p0}, Lcom/android/systemui/settings/ToggleSliderView;->access$300(Lcom/android/systemui/settings/ToggleSliderView;)Lcom/android/systemui/settings/ToggleSliderView;

    move-result-object p0

    invoke-static {p0}, Lcom/android/systemui/settings/ToggleSliderView;->access$400(Lcom/android/systemui/settings/ToggleSliderView;)Landroid/widget/CompoundButton;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    :cond_43
    return-void
.end method
