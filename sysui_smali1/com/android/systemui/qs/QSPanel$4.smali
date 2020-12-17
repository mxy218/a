.class Lcom/android/systemui/qs/QSPanel$4;
.super Ljava/lang/Object;
.source "QSPanel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/QSPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/QSPanel;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/QSPanel;)V
    .registers 2

    .line 1045
    iput-object p1, p0, Lcom/android/systemui/qs/QSPanel$4;->this$0:Lcom/android/systemui/qs/QSPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 1048
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel$4;->this$0:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSPanel;->isShowingDetail()Z

    move-result v0

    if-eqz v0, :cond_8b

    .line 1049
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel$4;->this$0:Lcom/android/systemui/qs/QSPanel;

    invoke-static {v0}, Lcom/android/systemui/qs/QSPanel;->access$100(Lcom/android/systemui/qs/QSPanel;)Lcom/android/systemui/qs/QSPanel$Record;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/QSPanel$TileRecord;

    .line 1050
    iget-object v1, v0, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLeft()I

    move-result v1

    iget-object v2, v0, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel$4;->this$0:Lcom/android/systemui/qs/QSPanel;

    invoke-static {v2}, Lcom/android/systemui/qs/QSPanel;->access$600(Lcom/android/systemui/qs/QSPanel;)I

    move-result v2

    sub-int/2addr v1, v2

    .line 1051
    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel$4;->this$0:Lcom/android/systemui/qs/QSPanel;

    invoke-static {v2}, Lcom/android/systemui/qs/QSPanel;->access$700(Lcom/android/systemui/qs/QSPanel;)I

    move-result v2

    iget-object v0, v0, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getBottom()I

    move-result v0

    add-int/2addr v2, v0

    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel$4;->this$0:Lcom/android/systemui/qs/QSPanel;

    invoke-static {v0}, Lcom/android/systemui/qs/QSPanel;->access$800(Lcom/android/systemui/qs/QSPanel;)I

    move-result v0

    add-int/2addr v2, v0

    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel$4;->this$0:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v0

    sub-int/2addr v2, v0

    .line 1052
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mSetDetailPosition onLayout x:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " y:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "QSPanel"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1053
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel$4;->this$0:Lcom/android/systemui/qs/QSPanel;

    invoke-static {v0}, Lcom/android/systemui/qs/QSPanel;->access$900(Lcom/android/systemui/qs/QSPanel;)I

    move-result v0

    iget-object v3, p0, Lcom/android/systemui/qs/QSPanel$4;->this$0:Lcom/android/systemui/qs/QSPanel;

    invoke-static {v3}, Lcom/android/systemui/qs/QSPanel;->access$1000(Lcom/android/systemui/qs/QSPanel;)I

    move-result v3

    sub-int/2addr v0, v3

    if-le v2, v0, :cond_75

    return-void

    .line 1054
    :cond_75
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel$4;->this$0:Lcom/android/systemui/qs/QSPanel;

    invoke-static {v0}, Lcom/android/systemui/qs/QSPanel;->access$1100(Lcom/android/systemui/qs/QSPanel;)Lcom/flyme/systemui/qs/MzQSDetail;

    move-result-object v0

    if-eqz v0, :cond_8b

    .line 1055
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanel$4;->this$0:Lcom/android/systemui/qs/QSPanel;

    invoke-static {p0}, Lcom/android/systemui/qs/QSPanel;->access$1100(Lcom/android/systemui/qs/QSPanel;)Lcom/flyme/systemui/qs/MzQSDetail;

    move-result-object p0

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/flyme/systemui/qs/MzQSDetail;->setDetailPosition(Landroid/graphics/Point;)V

    :cond_8b
    return-void
.end method
