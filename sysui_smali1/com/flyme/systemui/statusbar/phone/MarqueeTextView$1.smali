.class Lcom/flyme/systemui/statusbar/phone/MarqueeTextView$1;
.super Ljava/lang/Object;
.source "MarqueeTextView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/systemui/statusbar/phone/MarqueeTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemui/statusbar/phone/MarqueeTextView;


# direct methods
.method constructor <init>(Lcom/flyme/systemui/statusbar/phone/MarqueeTextView;)V
    .registers 2

    .line 144
    iput-object p1, p0, Lcom/flyme/systemui/statusbar/phone/MarqueeTextView$1;->this$0:Lcom/flyme/systemui/statusbar/phone/MarqueeTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .line 148
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/phone/MarqueeTextView$1;->this$0:Lcom/flyme/systemui/statusbar/phone/MarqueeTextView;

    invoke-static {v0}, Lcom/flyme/systemui/statusbar/phone/MarqueeTextView;->access$000(Lcom/flyme/systemui/statusbar/phone/MarqueeTextView;)I

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/flyme/systemui/statusbar/phone/MarqueeTextView$1;->this$0:Lcom/flyme/systemui/statusbar/phone/MarqueeTextView;

    invoke-static {v0}, Lcom/flyme/systemui/statusbar/phone/MarqueeTextView;->access$100(Lcom/flyme/systemui/statusbar/phone/MarqueeTextView;)I

    move-result v0

    if-nez v0, :cond_15

    .line 150
    :cond_10
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/phone/MarqueeTextView$1;->this$0:Lcom/flyme/systemui/statusbar/phone/MarqueeTextView;

    invoke-static {v0}, Lcom/flyme/systemui/statusbar/phone/MarqueeTextView;->access$200(Lcom/flyme/systemui/statusbar/phone/MarqueeTextView;)V

    .line 156
    :cond_15
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/phone/MarqueeTextView$1;->this$0:Lcom/flyme/systemui/statusbar/phone/MarqueeTextView;

    invoke-static {v0}, Lcom/flyme/systemui/statusbar/phone/MarqueeTextView;->access$000(Lcom/flyme/systemui/statusbar/phone/MarqueeTextView;)I

    move-result v0

    iget-object v1, p0, Lcom/flyme/systemui/statusbar/phone/MarqueeTextView$1;->this$0:Lcom/flyme/systemui/statusbar/phone/MarqueeTextView;

    invoke-static {v1}, Lcom/flyme/systemui/statusbar/phone/MarqueeTextView;->access$100(Lcom/flyme/systemui/statusbar/phone/MarqueeTextView;)I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_2c

    .line 157
    iget-object p0, p0, Lcom/flyme/systemui/statusbar/phone/MarqueeTextView$1;->this$0:Lcom/flyme/systemui/statusbar/phone/MarqueeTextView;

    invoke-static {p0, v1}, Lcom/flyme/systemui/statusbar/phone/MarqueeTextView;->access$302(Lcom/flyme/systemui/statusbar/phone/MarqueeTextView;Z)Z

    return-void

    .line 161
    :cond_2c
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/phone/MarqueeTextView$1;->this$0:Lcom/flyme/systemui/statusbar/phone/MarqueeTextView;

    invoke-static {v0}, Lcom/flyme/systemui/statusbar/phone/MarqueeTextView;->access$000(Lcom/flyme/systemui/statusbar/phone/MarqueeTextView;)I

    move-result v0

    iget-object v3, p0, Lcom/flyme/systemui/statusbar/phone/MarqueeTextView$1;->this$0:Lcom/flyme/systemui/statusbar/phone/MarqueeTextView;

    invoke-static {v3}, Lcom/flyme/systemui/statusbar/phone/MarqueeTextView;->access$100(Lcom/flyme/systemui/statusbar/phone/MarqueeTextView;)I

    move-result v3

    sub-int/2addr v0, v3

    add-int/lit8 v3, v0, -0x64

    const/16 v4, 0xc8

    const/16 v5, 0xa

    if-ge v0, v4, :cond_47

    .line 171
    iget-object v3, p0, Lcom/flyme/systemui/statusbar/phone/MarqueeTextView$1;->this$0:Lcom/flyme/systemui/statusbar/phone/MarqueeTextView;

    invoke-static {v3, v5}, Lcom/flyme/systemui/statusbar/phone/MarqueeTextView;->access$402(Lcom/flyme/systemui/statusbar/phone/MarqueeTextView;I)I

    goto :goto_7f

    .line 173
    :cond_47
    iget-object v4, p0, Lcom/flyme/systemui/statusbar/phone/MarqueeTextView$1;->this$0:Lcom/flyme/systemui/statusbar/phone/MarqueeTextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getScrollX()I

    move-result v4

    const v6, 0x3d8f5c29  # 0.07f

    const/16 v7, 0x64

    if-ge v4, v7, :cond_62

    .line 174
    iget-object v3, p0, Lcom/flyme/systemui/statusbar/phone/MarqueeTextView$1;->this$0:Lcom/flyme/systemui/statusbar/phone/MarqueeTextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getScrollX()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v6

    float-to-int v4, v4

    sub-int/2addr v5, v4

    invoke-static {v3, v5}, Lcom/flyme/systemui/statusbar/phone/MarqueeTextView;->access$402(Lcom/flyme/systemui/statusbar/phone/MarqueeTextView;I)I

    goto :goto_7f

    .line 177
    :cond_62
    iget-object v4, p0, Lcom/flyme/systemui/statusbar/phone/MarqueeTextView$1;->this$0:Lcom/flyme/systemui/statusbar/phone/MarqueeTextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getScrollX()I

    move-result v4

    const/4 v5, 0x3

    if-le v4, v3, :cond_7a

    .line 178
    iget-object v4, p0, Lcom/flyme/systemui/statusbar/phone/MarqueeTextView$1;->this$0:Lcom/flyme/systemui/statusbar/phone/MarqueeTextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getScrollX()I

    move-result v7

    sub-int/2addr v7, v3

    int-to-float v3, v7

    mul-float/2addr v3, v6

    float-to-int v3, v3

    add-int/2addr v3, v5

    invoke-static {v4, v3}, Lcom/flyme/systemui/statusbar/phone/MarqueeTextView;->access$402(Lcom/flyme/systemui/statusbar/phone/MarqueeTextView;I)I

    goto :goto_7f

    .line 182
    :cond_7a
    iget-object v3, p0, Lcom/flyme/systemui/statusbar/phone/MarqueeTextView$1;->this$0:Lcom/flyme/systemui/statusbar/phone/MarqueeTextView;

    invoke-static {v3, v5}, Lcom/flyme/systemui/statusbar/phone/MarqueeTextView;->access$402(Lcom/flyme/systemui/statusbar/phone/MarqueeTextView;I)I

    .line 189
    :goto_7f
    iget-object v3, p0, Lcom/flyme/systemui/statusbar/phone/MarqueeTextView$1;->this$0:Lcom/flyme/systemui/statusbar/phone/MarqueeTextView;

    invoke-static {v3, v2}, Lcom/flyme/systemui/statusbar/phone/MarqueeTextView;->access$512(Lcom/flyme/systemui/statusbar/phone/MarqueeTextView;I)I

    .line 192
    iget-object v2, p0, Lcom/flyme/systemui/statusbar/phone/MarqueeTextView$1;->this$0:Lcom/flyme/systemui/statusbar/phone/MarqueeTextView;

    invoke-static {v2}, Lcom/flyme/systemui/statusbar/phone/MarqueeTextView;->access$300(Lcom/flyme/systemui/statusbar/phone/MarqueeTextView;)Z

    move-result v2

    if-nez v2, :cond_8d

    return-void

    .line 201
    :cond_8d
    iget-object v2, p0, Lcom/flyme/systemui/statusbar/phone/MarqueeTextView$1;->this$0:Lcom/flyme/systemui/statusbar/phone/MarqueeTextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getScrollX()I

    move-result v2

    if-le v2, v0, :cond_9a

    .line 202
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/phone/MarqueeTextView$1;->this$0:Lcom/flyme/systemui/statusbar/phone/MarqueeTextView;

    invoke-static {v0, v1}, Lcom/flyme/systemui/statusbar/phone/MarqueeTextView;->access$302(Lcom/flyme/systemui/statusbar/phone/MarqueeTextView;Z)Z

    .line 212
    :cond_9a
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/phone/MarqueeTextView$1;->this$0:Lcom/flyme/systemui/statusbar/phone/MarqueeTextView;

    invoke-static {v0}, Lcom/flyme/systemui/statusbar/phone/MarqueeTextView;->access$600(Lcom/flyme/systemui/statusbar/phone/MarqueeTextView;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/flyme/systemui/statusbar/phone/MarqueeTextView$1$1;

    invoke-direct {v1, p0}, Lcom/flyme/systemui/statusbar/phone/MarqueeTextView$1$1;-><init>(Lcom/flyme/systemui/statusbar/phone/MarqueeTextView$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 222
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/phone/MarqueeTextView$1;->this$0:Lcom/flyme/systemui/statusbar/phone/MarqueeTextView;

    invoke-static {v0}, Lcom/flyme/systemui/statusbar/phone/MarqueeTextView;->access$700(Lcom/flyme/systemui/statusbar/phone/MarqueeTextView;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_c6

    .line 223
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/phone/MarqueeTextView$1;->this$0:Lcom/flyme/systemui/statusbar/phone/MarqueeTextView;

    invoke-static {v0}, Lcom/flyme/systemui/statusbar/phone/MarqueeTextView;->access$700(Lcom/flyme/systemui/statusbar/phone/MarqueeTextView;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/flyme/systemui/statusbar/phone/MarqueeTextView$1;->this$0:Lcom/flyme/systemui/statusbar/phone/MarqueeTextView;

    invoke-static {v1}, Lcom/flyme/systemui/statusbar/phone/MarqueeTextView;->access$800(Lcom/flyme/systemui/statusbar/phone/MarqueeTextView;)Ljava/lang/Runnable;

    move-result-object v1

    iget-object p0, p0, Lcom/flyme/systemui/statusbar/phone/MarqueeTextView$1;->this$0:Lcom/flyme/systemui/statusbar/phone/MarqueeTextView;

    invoke-static {p0}, Lcom/flyme/systemui/statusbar/phone/MarqueeTextView;->access$400(Lcom/flyme/systemui/statusbar/phone/MarqueeTextView;)I

    move-result p0

    int-to-long v2, p0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_c6
    return-void
.end method
