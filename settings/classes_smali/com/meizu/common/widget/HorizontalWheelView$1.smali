.class Lcom/meizu/common/widget/HorizontalWheelView$1;
.super Ljava/lang/Object;
.source "HorizontalWheelView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/common/widget/HorizontalWheelView;->notifySelectedChange()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/common/widget/HorizontalWheelView;


# direct methods
.method constructor <init>(Lcom/meizu/common/widget/HorizontalWheelView;)V
    .registers 2

    .line 571
    iput-object p1, p0, Lcom/meizu/common/widget/HorizontalWheelView$1;->this$0:Lcom/meizu/common/widget/HorizontalWheelView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 574
    iget-object v0, p0, Lcom/meizu/common/widget/HorizontalWheelView$1;->this$0:Lcom/meizu/common/widget/HorizontalWheelView;

    invoke-static {v0}, Lcom/meizu/common/widget/HorizontalWheelView;->access$100(Lcom/meizu/common/widget/HorizontalWheelView;)Lcom/meizu/common/widget/HorizontalWheelView$OnValueChangeListener;

    move-result-object v0

    iget-object p0, p0, Lcom/meizu/common/widget/HorizontalWheelView$1;->this$0:Lcom/meizu/common/widget/HorizontalWheelView;

    invoke-static {p0}, Lcom/meizu/common/widget/HorizontalWheelView;->access$000(Lcom/meizu/common/widget/HorizontalWheelView;)I

    move-result p0

    int-to-float p0, p0

    invoke-interface {v0, p0}, Lcom/meizu/common/widget/HorizontalWheelView$OnValueChangeListener;->onSelectedChange(F)V

    return-void
.end method
