.class Lcom/android/systemui/ExpandHelper$1;
.super Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;
.source "ExpandHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/ExpandHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/ExpandHelper;


# direct methods
.method constructor <init>(Lcom/android/systemui/ExpandHelper;)V
    .registers 2

    .line 115
    iput-object p1, p0, Lcom/android/systemui/ExpandHelper$1;->this$0:Lcom/android/systemui/ExpandHelper;

    invoke-direct {p0}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .registers 2

    const/4 p0, 0x1

    return p0
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .registers 4

    .line 120
    iget-object p1, p0, Lcom/android/systemui/ExpandHelper$1;->this$0:Lcom/android/systemui/ExpandHelper;

    invoke-static {p1}, Lcom/android/systemui/ExpandHelper;->access$000(Lcom/android/systemui/ExpandHelper;)Z

    move-result p1

    if-nez p1, :cond_12

    .line 121
    iget-object p1, p0, Lcom/android/systemui/ExpandHelper$1;->this$0:Lcom/android/systemui/ExpandHelper;

    invoke-static {p1}, Lcom/android/systemui/ExpandHelper;->access$100(Lcom/android/systemui/ExpandHelper;)Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/android/systemui/ExpandHelper;->startExpanding(Lcom/android/systemui/statusbar/notification/row/ExpandableView;I)Z

    .line 123
    :cond_12
    iget-object p0, p0, Lcom/android/systemui/ExpandHelper$1;->this$0:Lcom/android/systemui/ExpandHelper;

    invoke-static {p0}, Lcom/android/systemui/ExpandHelper;->access$200(Lcom/android/systemui/ExpandHelper;)Z

    move-result p0

    return p0
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .registers 2

    return-void
.end method
