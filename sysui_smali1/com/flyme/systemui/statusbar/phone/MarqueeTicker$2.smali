.class Lcom/flyme/systemui/statusbar/phone/MarqueeTicker$2;
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

    .line 197
    iput-object p1, p0, Lcom/flyme/systemui/statusbar/phone/MarqueeTicker$2;->this$0:Lcom/flyme/systemui/statusbar/phone/MarqueeTicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 202
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/phone/MarqueeTicker$2;->this$0:Lcom/flyme/systemui/statusbar/phone/MarqueeTicker;

    invoke-static {v0}, Lcom/flyme/systemui/statusbar/phone/MarqueeTicker;->access$400(Lcom/flyme/systemui/statusbar/phone/MarqueeTicker;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_16

    .line 203
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/phone/MarqueeTicker$2;->this$0:Lcom/flyme/systemui/statusbar/phone/MarqueeTicker;

    invoke-static {v0}, Lcom/flyme/systemui/statusbar/phone/MarqueeTicker;->access$400(Lcom/flyme/systemui/statusbar/phone/MarqueeTicker;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 206
    :cond_16
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/phone/MarqueeTicker$2;->this$0:Lcom/flyme/systemui/statusbar/phone/MarqueeTicker;

    invoke-static {v0}, Lcom/flyme/systemui/statusbar/phone/MarqueeTicker;->access$400(Lcom/flyme/systemui/statusbar/phone/MarqueeTicker;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_6b

    .line 207
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/phone/MarqueeTicker$2;->this$0:Lcom/flyme/systemui/statusbar/phone/MarqueeTicker;

    invoke-static {v0}, Lcom/flyme/systemui/statusbar/phone/MarqueeTicker;->access$400(Lcom/flyme/systemui/statusbar/phone/MarqueeTicker;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flyme/systemui/statusbar/phone/MarqueeTicker$Segment;

    .line 209
    iget-boolean v1, v0, Lcom/flyme/systemui/statusbar/phone/MarqueeTicker$Segment;->isRemoved:Z

    if-nez v1, :cond_66

    .line 210
    iget-object v1, p0, Lcom/flyme/systemui/statusbar/phone/MarqueeTicker$2;->this$0:Lcom/flyme/systemui/statusbar/phone/MarqueeTicker;

    iget-object v1, v1, Lcom/flyme/systemui/statusbar/phone/MarqueeTicker;->mIconSwitcher:Landroid/widget/ImageSwitcher;

    iget-object v2, v0, Lcom/flyme/systemui/statusbar/phone/MarqueeTicker$Segment;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageSwitcher;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 211
    iget-object v1, p0, Lcom/flyme/systemui/statusbar/phone/MarqueeTicker$2;->this$0:Lcom/flyme/systemui/statusbar/phone/MarqueeTicker;

    iget-object v1, v1, Lcom/flyme/systemui/statusbar/phone/MarqueeTicker;->mTextSwitcher:Landroid/widget/TextSwitcher;

    iget-object v2, v0, Lcom/flyme/systemui/statusbar/phone/MarqueeTicker$Segment;->text:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextSwitcher;->setText(Ljava/lang/CharSequence;)V

    .line 212
    iget-object v1, p0, Lcom/flyme/systemui/statusbar/phone/MarqueeTicker$2;->this$0:Lcom/flyme/systemui/statusbar/phone/MarqueeTicker;

    iget-object v2, v1, Lcom/flyme/systemui/statusbar/phone/MarqueeTicker;->mTextSwitcher:Landroid/widget/TextSwitcher;

    .line 213
    invoke-virtual {v2}, Landroid/widget/TextSwitcher;->getDisplayedChild()I

    move-result v3

    .line 212
    invoke-virtual {v2, v3}, Landroid/widget/TextSwitcher;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/flyme/systemui/statusbar/phone/MarqueeTextView;

    invoke-static {v1, v2}, Lcom/flyme/systemui/statusbar/phone/MarqueeTicker;->access$002(Lcom/flyme/systemui/statusbar/phone/MarqueeTicker;Lcom/flyme/systemui/statusbar/phone/MarqueeTextView;)Lcom/flyme/systemui/statusbar/phone/MarqueeTextView;

    .line 214
    iget-object v1, p0, Lcom/flyme/systemui/statusbar/phone/MarqueeTicker$2;->this$0:Lcom/flyme/systemui/statusbar/phone/MarqueeTicker;

    invoke-static {v1}, Lcom/flyme/systemui/statusbar/phone/MarqueeTicker;->access$000(Lcom/flyme/systemui/statusbar/phone/MarqueeTicker;)Lcom/flyme/systemui/statusbar/phone/MarqueeTextView;

    move-result-object v1

    iput-object v0, v1, Lcom/flyme/systemui/statusbar/phone/MarqueeTextView;->mSegment:Lcom/flyme/systemui/statusbar/phone/MarqueeTicker$Segment;

    .line 215
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/phone/MarqueeTicker$2;->this$0:Lcom/flyme/systemui/statusbar/phone/MarqueeTicker;

    invoke-static {v0}, Lcom/flyme/systemui/statusbar/phone/MarqueeTicker;->access$000(Lcom/flyme/systemui/statusbar/phone/MarqueeTicker;)Lcom/flyme/systemui/statusbar/phone/MarqueeTextView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flyme/systemui/statusbar/phone/MarqueeTextView;->startScrollSoon()V

    .line 218
    :cond_66
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/phone/MarqueeTicker$2;->this$0:Lcom/flyme/systemui/statusbar/phone/MarqueeTicker;

    invoke-static {v0}, Lcom/flyme/systemui/statusbar/phone/MarqueeTicker;->access$100(Lcom/flyme/systemui/statusbar/phone/MarqueeTicker;)V

    .line 221
    :cond_6b
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/phone/MarqueeTicker$2;->this$0:Lcom/flyme/systemui/statusbar/phone/MarqueeTicker;

    invoke-static {v0}, Lcom/flyme/systemui/statusbar/phone/MarqueeTicker;->access$400(Lcom/flyme/systemui/statusbar/phone/MarqueeTicker;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_7c

    .line 222
    iget-object p0, p0, Lcom/flyme/systemui/statusbar/phone/MarqueeTicker$2;->this$0:Lcom/flyme/systemui/statusbar/phone/MarqueeTicker;

    invoke-virtual {p0}, Lcom/flyme/systemui/statusbar/phone/MarqueeTicker;->tickerDone()V

    :cond_7c
    return-void
.end method
