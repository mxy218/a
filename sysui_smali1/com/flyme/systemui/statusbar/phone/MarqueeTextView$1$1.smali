.class Lcom/flyme/systemui/statusbar/phone/MarqueeTextView$1$1;
.super Ljava/lang/Object;
.source "MarqueeTextView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/systemui/statusbar/phone/MarqueeTextView$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/flyme/systemui/statusbar/phone/MarqueeTextView$1;


# direct methods
.method constructor <init>(Lcom/flyme/systemui/statusbar/phone/MarqueeTextView$1;)V
    .registers 2

    .line 212
    iput-object p1, p0, Lcom/flyme/systemui/statusbar/phone/MarqueeTextView$1$1;->this$1:Lcom/flyme/systemui/statusbar/phone/MarqueeTextView$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 217
    iget-object p0, p0, Lcom/flyme/systemui/statusbar/phone/MarqueeTextView$1$1;->this$1:Lcom/flyme/systemui/statusbar/phone/MarqueeTextView$1;

    iget-object p0, p0, Lcom/flyme/systemui/statusbar/phone/MarqueeTextView$1;->this$0:Lcom/flyme/systemui/statusbar/phone/MarqueeTextView;

    invoke-static {p0}, Lcom/flyme/systemui/statusbar/phone/MarqueeTextView;->access$500(Lcom/flyme/systemui/statusbar/phone/MarqueeTextView;)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/widget/TextView;->scrollTo(II)V

    return-void
.end method
