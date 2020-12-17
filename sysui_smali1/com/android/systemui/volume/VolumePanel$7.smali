.class Lcom/android/systemui/volume/VolumePanel$7;
.super Ljava/lang/Object;
.source "VolumePanel.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/volume/VolumePanel;->createSliders()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/volume/VolumePanel;


# direct methods
.method constructor <init>(Lcom/android/systemui/volume/VolumePanel;)V
    .registers 2

    .line 1027
    iput-object p1, p0, Lcom/android/systemui/volume/VolumePanel$7;->this$0:Lcom/android/systemui/volume/VolumePanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    .line 1030
    iget-object p1, p0, Lcom/android/systemui/volume/VolumePanel$7;->this$0:Lcom/android/systemui/volume/VolumePanel;

    invoke-static {p1}, Lcom/android/systemui/volume/VolumePanel;->access$2200(Lcom/android/systemui/volume/VolumePanel;)Landroid/util/SparseArray;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel$7;->this$0:Lcom/android/systemui/volume/VolumePanel;

    invoke-static {v0}, Lcom/android/systemui/volume/VolumePanel;->access$800(Lcom/android/systemui/volume/VolumePanel;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;

    const/4 v0, 0x0

    if-eqz p1, :cond_28

    .line 1032
    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel$7;->this$0:Lcom/android/systemui/volume/VolumePanel;

    invoke-static {v1}, Lcom/android/systemui/volume/VolumePanel;->access$800(Lcom/android/systemui/volume/VolumePanel;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/systemui/volume/VolumePanel;->access$2300(Lcom/android/systemui/volume/VolumePanel;I)I

    move-result v2

    const/4 v3, 0x1

    invoke-static {v1, p1, v2, v3}, Lcom/android/systemui/volume/VolumePanel;->access$2400(Lcom/android/systemui/volume/VolumePanel;Lcom/android/systemui/volume/VolumePanel$StreamControl;IZ)V

    .line 1033
    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel$7;->this$0:Lcom/android/systemui/volume/VolumePanel;

    invoke-static {v1, p1, v0}, Lcom/android/systemui/volume/VolumePanel;->access$2500(Lcom/android/systemui/volume/VolumePanel;Lcom/android/systemui/volume/VolumePanel$StreamControl;Z)V

    .line 1035
    :cond_28
    iget-object p1, p0, Lcom/android/systemui/volume/VolumePanel$7;->this$0:Lcom/android/systemui/volume/VolumePanel;

    invoke-static {p1}, Lcom/android/systemui/volume/VolumePanel;->access$1600(Lcom/android/systemui/volume/VolumePanel;)Landroid/view/ViewGroup;

    move-result-object p1

    const/high16 v1, 0x3f800000  # 1.0f

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setScaleX(F)V

    .line 1036
    iget-object p1, p0, Lcom/android/systemui/volume/VolumePanel$7;->this$0:Lcom/android/systemui/volume/VolumePanel;

    invoke-static {p1}, Lcom/android/systemui/volume/VolumePanel;->access$1600(Lcom/android/systemui/volume/VolumePanel;)Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setScaleY(F)V

    .line 1037
    iget-object p1, p0, Lcom/android/systemui/volume/VolumePanel$7;->this$0:Lcom/android/systemui/volume/VolumePanel;

    invoke-static {p1}, Lcom/android/systemui/volume/VolumePanel;->access$1600(Lcom/android/systemui/volume/VolumePanel;)Landroid/view/ViewGroup;

    move-result-object p1

    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel$7;->this$0:Lcom/android/systemui/volume/VolumePanel;

    invoke-static {v1}, Lcom/android/systemui/volume/VolumePanel;->access$2600(Lcom/android/systemui/volume/VolumePanel;)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setX(F)V

    .line 1038
    iget-object p1, p0, Lcom/android/systemui/volume/VolumePanel$7;->this$0:Lcom/android/systemui/volume/VolumePanel;

    invoke-static {p1}, Lcom/android/systemui/volume/VolumePanel;->access$1500(Lcom/android/systemui/volume/VolumePanel;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 1039
    iget-object p1, p0, Lcom/android/systemui/volume/VolumePanel$7;->this$0:Lcom/android/systemui/volume/VolumePanel;

    const/16 v1, 0x1c

    invoke-virtual {p1, v1, v0, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x14

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1041
    iget-object p1, p0, Lcom/android/systemui/volume/VolumePanel$7;->this$0:Lcom/android/systemui/volume/VolumePanel;

    invoke-static {p1}, Lcom/android/systemui/volume/VolumePanel;->access$1300(Lcom/android/systemui/volume/VolumePanel;)V

    .line 1043
    iget-object p1, p0, Lcom/android/systemui/volume/VolumePanel$7;->this$0:Lcom/android/systemui/volume/VolumePanel;

    invoke-static {p1}, Lcom/android/systemui/volume/VolumePanel;->access$600(Lcom/android/systemui/volume/VolumePanel;)V

    .line 1044
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[VP_DEBUG] =====================================================\n[VP_DEBUG] mScreenWidth: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel$7;->this$0:Lcom/android/systemui/volume/VolumePanel;

    .line 1045
    invoke-static {v0}, Lcom/android/systemui/volume/VolumePanel;->access$2700(Lcom/android/systemui/volume/VolumePanel;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "(px), "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel$7;->this$0:Lcom/android/systemui/volume/VolumePanel;

    iget-object v2, v1, Lcom/android/systemui/volume/VolumePanel;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/volume/VolumePanel;->access$2700(Lcom/android/systemui/volume/VolumePanel;)I

    move-result v1

    int-to-float v1, v1

    invoke-static {v2, v1}, Lcom/android/systemui/volume/VolumePanel;->px2dip(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "(dip)\n[VP_DEBUG] mScreenHeight: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel$7;->this$0:Lcom/android/systemui/volume/VolumePanel;

    .line 1046
    invoke-static {v1}, Lcom/android/systemui/volume/VolumePanel;->access$2600(Lcom/android/systemui/volume/VolumePanel;)I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel$7;->this$0:Lcom/android/systemui/volume/VolumePanel;

    iget-object v2, v1, Lcom/android/systemui/volume/VolumePanel;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/volume/VolumePanel;->access$2600(Lcom/android/systemui/volume/VolumePanel;)I

    move-result v1

    int-to-float v1, v1

    invoke-static {v2, v1}, Lcom/android/systemui/volume/VolumePanel;->px2dip(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "(dip)\n[VP_DEBUG] mPanelShadowWidth: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel$7;->this$0:Lcom/android/systemui/volume/VolumePanel;

    .line 1047
    invoke-static {v1}, Lcom/android/systemui/volume/VolumePanel;->access$1700(Lcom/android/systemui/volume/VolumePanel;)I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel$7;->this$0:Lcom/android/systemui/volume/VolumePanel;

    iget-object v2, v1, Lcom/android/systemui/volume/VolumePanel;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/volume/VolumePanel;->access$1700(Lcom/android/systemui/volume/VolumePanel;)I

    move-result v1

    int-to-float v1, v1

    invoke-static {v2, v1}, Lcom/android/systemui/volume/VolumePanel;->px2dip(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "(dip)\n[VP_DEBUG] mVolumeTitleHeight: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel$7;->this$0:Lcom/android/systemui/volume/VolumePanel;

    .line 1048
    invoke-static {v1}, Lcom/android/systemui/volume/VolumePanel;->access$2800(Lcom/android/systemui/volume/VolumePanel;)I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel$7;->this$0:Lcom/android/systemui/volume/VolumePanel;

    iget-object v2, v1, Lcom/android/systemui/volume/VolumePanel;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/volume/VolumePanel;->access$2800(Lcom/android/systemui/volume/VolumePanel;)I

    move-result v1

    int-to-float v1, v1

    invoke-static {v2, v1}, Lcom/android/systemui/volume/VolumePanel;->px2dip(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "(dip)\n[VP_DEBUG] mViewGroupItemWidth: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel$7;->this$0:Lcom/android/systemui/volume/VolumePanel;

    .line 1049
    invoke-static {v1}, Lcom/android/systemui/volume/VolumePanel;->access$2900(Lcom/android/systemui/volume/VolumePanel;)I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel$7;->this$0:Lcom/android/systemui/volume/VolumePanel;

    iget-object v2, v1, Lcom/android/systemui/volume/VolumePanel;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/volume/VolumePanel;->access$2900(Lcom/android/systemui/volume/VolumePanel;)I

    move-result v1

    int-to-float v1, v1

    invoke-static {v2, v1}, Lcom/android/systemui/volume/VolumePanel;->px2dip(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "(dip)\n[VP_DEBUG] mViewGroupItemHeight: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel$7;->this$0:Lcom/android/systemui/volume/VolumePanel;

    .line 1050
    invoke-static {v1}, Lcom/android/systemui/volume/VolumePanel;->access$3000(Lcom/android/systemui/volume/VolumePanel;)I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel$7;->this$0:Lcom/android/systemui/volume/VolumePanel;

    iget-object v2, v1, Lcom/android/systemui/volume/VolumePanel;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/volume/VolumePanel;->access$3000(Lcom/android/systemui/volume/VolumePanel;)I

    move-result v1

    int-to-float v1, v1

    invoke-static {v2, v1}, Lcom/android/systemui/volume/VolumePanel;->px2dip(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "(dip)\n[VP_DEBUG] mSeekbarLayoutWidth: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel$7;->this$0:Lcom/android/systemui/volume/VolumePanel;

    .line 1051
    invoke-static {v1}, Lcom/android/systemui/volume/VolumePanel;->access$3100(Lcom/android/systemui/volume/VolumePanel;)I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel$7;->this$0:Lcom/android/systemui/volume/VolumePanel;

    iget-object v2, v1, Lcom/android/systemui/volume/VolumePanel;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/volume/VolumePanel;->access$3100(Lcom/android/systemui/volume/VolumePanel;)I

    move-result v1

    int-to-float v1, v1

    invoke-static {v2, v1}, Lcom/android/systemui/volume/VolumePanel;->px2dip(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "(dip)\n[VP_DEBUG] mSeekbarLayoutHeight: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel$7;->this$0:Lcom/android/systemui/volume/VolumePanel;

    .line 1052
    invoke-static {v1}, Lcom/android/systemui/volume/VolumePanel;->access$3200(Lcom/android/systemui/volume/VolumePanel;)I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/volume/VolumePanel$7;->this$0:Lcom/android/systemui/volume/VolumePanel;

    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/systemui/volume/VolumePanel;->access$3200(Lcom/android/systemui/volume/VolumePanel;)I

    move-result p0

    int-to-float p0, p0

    invoke-static {v0, p0}, Lcom/android/systemui/volume/VolumePanel;->px2dip(Landroid/content/Context;F)I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "(dip)\n[VP_DEBUG] ====================================================="

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "VolumePanel"

    .line 1044
    invoke-static {p1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
