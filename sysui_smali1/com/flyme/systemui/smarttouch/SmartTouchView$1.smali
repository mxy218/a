.class Lcom/flyme/systemui/smarttouch/SmartTouchView$1;
.super Lcom/flyme/systemui/smarttouch/SmartTouchView$CallBackAnimationDrawable;
.source "SmartTouchView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/systemui/smarttouch/SmartTouchView;->bindAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemui/smarttouch/SmartTouchView;


# direct methods
.method constructor <init>(Lcom/flyme/systemui/smarttouch/SmartTouchView;)V
    .registers 2

    .line 188
    iput-object p1, p0, Lcom/flyme/systemui/smarttouch/SmartTouchView$1;->this$0:Lcom/flyme/systemui/smarttouch/SmartTouchView;

    invoke-direct {p0, p1}, Lcom/flyme/systemui/smarttouch/SmartTouchView$CallBackAnimationDrawable;-><init>(Lcom/flyme/systemui/smarttouch/SmartTouchView;)V

    return-void
.end method


# virtual methods
.method public onFinished()V
    .registers 3

    .line 191
    iget-object v0, p0, Lcom/flyme/systemui/smarttouch/SmartTouchView$1;->this$0:Lcom/flyme/systemui/smarttouch/SmartTouchView;

    invoke-static {v0}, Lcom/flyme/systemui/smarttouch/SmartTouchView;->access$100(Lcom/flyme/systemui/smarttouch/SmartTouchView;)Lcom/flyme/systemui/smarttouch/SmartTouchView$State;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/flyme/systemui/smarttouch/SmartTouchView;->access$002(Lcom/flyme/systemui/smarttouch/SmartTouchView;Lcom/flyme/systemui/smarttouch/SmartTouchView$State;)Lcom/flyme/systemui/smarttouch/SmartTouchView$State;

    .line 192
    iget-object v0, p0, Lcom/flyme/systemui/smarttouch/SmartTouchView$1;->this$0:Lcom/flyme/systemui/smarttouch/SmartTouchView;

    invoke-static {v0}, Lcom/flyme/systemui/smarttouch/SmartTouchView;->access$200(Lcom/flyme/systemui/smarttouch/SmartTouchView;)Ljava/util/LinkedList;

    move-result-object v1

    iget-object p0, p0, Lcom/flyme/systemui/smarttouch/SmartTouchView$1;->this$0:Lcom/flyme/systemui/smarttouch/SmartTouchView;

    invoke-static {p0}, Lcom/flyme/systemui/smarttouch/SmartTouchView;->access$200(Lcom/flyme/systemui/smarttouch/SmartTouchView;)Ljava/util/LinkedList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/LinkedList;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-virtual {v1, p0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method
