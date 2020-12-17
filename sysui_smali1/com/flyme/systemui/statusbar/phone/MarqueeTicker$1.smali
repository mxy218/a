.class Lcom/flyme/systemui/statusbar/phone/MarqueeTicker$1;
.super Ljava/lang/Object;
.source "MarqueeTicker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/systemui/statusbar/phone/MarqueeTicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemui/statusbar/phone/MarqueeTicker;


# direct methods
.method constructor <init>(Lcom/flyme/systemui/statusbar/phone/MarqueeTicker;)V
    .registers 2

    .line 168
    iput-object p1, p0, Lcom/flyme/systemui/statusbar/phone/MarqueeTicker$1;->this$0:Lcom/flyme/systemui/statusbar/phone/MarqueeTicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 171
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/phone/MarqueeTicker$1;->this$0:Lcom/flyme/systemui/statusbar/phone/MarqueeTicker;

    invoke-static {v0}, Lcom/flyme/systemui/statusbar/phone/MarqueeTicker;->access$000(Lcom/flyme/systemui/statusbar/phone/MarqueeTicker;)Lcom/flyme/systemui/statusbar/phone/MarqueeTextView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flyme/systemui/statusbar/phone/MarqueeTextView;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 172
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/phone/MarqueeTicker$1;->this$0:Lcom/flyme/systemui/statusbar/phone/MarqueeTicker;

    invoke-static {v0}, Lcom/flyme/systemui/statusbar/phone/MarqueeTicker;->access$000(Lcom/flyme/systemui/statusbar/phone/MarqueeTicker;)Lcom/flyme/systemui/statusbar/phone/MarqueeTextView;

    move-result-object v0

    iget-object v0, v0, Lcom/flyme/systemui/statusbar/phone/MarqueeTextView;->mSegment:Lcom/flyme/systemui/statusbar/phone/MarqueeTicker$Segment;

    iget-boolean v0, v0, Lcom/flyme/systemui/statusbar/phone/MarqueeTicker$Segment;->isRemoved:Z

    if-nez v0, :cond_1e

    .line 173
    iget-object p0, p0, Lcom/flyme/systemui/statusbar/phone/MarqueeTicker$1;->this$0:Lcom/flyme/systemui/statusbar/phone/MarqueeTicker;

    invoke-static {p0}, Lcom/flyme/systemui/statusbar/phone/MarqueeTicker;->access$100(Lcom/flyme/systemui/statusbar/phone/MarqueeTicker;)V

    goto :goto_29

    .line 175
    :cond_1e
    iget-object p0, p0, Lcom/flyme/systemui/statusbar/phone/MarqueeTicker$1;->this$0:Lcom/flyme/systemui/statusbar/phone/MarqueeTicker;

    invoke-static {p0}, Lcom/flyme/systemui/statusbar/phone/MarqueeTicker;->access$200(Lcom/flyme/systemui/statusbar/phone/MarqueeTicker;)V

    goto :goto_29

    .line 178
    :cond_24
    iget-object p0, p0, Lcom/flyme/systemui/statusbar/phone/MarqueeTicker$1;->this$0:Lcom/flyme/systemui/statusbar/phone/MarqueeTicker;

    invoke-static {p0}, Lcom/flyme/systemui/statusbar/phone/MarqueeTicker;->access$300(Lcom/flyme/systemui/statusbar/phone/MarqueeTicker;)V

    :goto_29
    return-void
.end method
