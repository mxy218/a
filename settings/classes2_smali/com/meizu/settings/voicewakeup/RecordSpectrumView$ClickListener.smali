.class Lcom/meizu/settings/voicewakeup/RecordSpectrumView$ClickListener;
.super Ljava/lang/Object;
.source "RecordSpectrumView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/voicewakeup/RecordSpectrumView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/voicewakeup/RecordSpectrumView;


# direct methods
.method constructor <init>(Lcom/meizu/settings/voicewakeup/RecordSpectrumView;)V
    .registers 2

    .line 93
    iput-object p1, p0, Lcom/meizu/settings/voicewakeup/RecordSpectrumView$ClickListener;->this$0:Lcom/meizu/settings/voicewakeup/RecordSpectrumView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 96
    iget-object v0, p0, Lcom/meizu/settings/voicewakeup/RecordSpectrumView$ClickListener;->this$0:Lcom/meizu/settings/voicewakeup/RecordSpectrumView;

    invoke-static {v0}, Lcom/meizu/settings/voicewakeup/RecordSpectrumView;->access$000(Lcom/meizu/settings/voicewakeup/RecordSpectrumView;)I

    move-result v0

    if-nez v0, :cond_19

    iget-object v0, p0, Lcom/meizu/settings/voicewakeup/RecordSpectrumView$ClickListener;->this$0:Lcom/meizu/settings/voicewakeup/RecordSpectrumView;

    invoke-static {v0}, Lcom/meizu/settings/voicewakeup/RecordSpectrumView;->access$100(Lcom/meizu/settings/voicewakeup/RecordSpectrumView;)Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 97
    iget-object p0, p0, Lcom/meizu/settings/voicewakeup/RecordSpectrumView$ClickListener;->this$0:Lcom/meizu/settings/voicewakeup/RecordSpectrumView;

    invoke-static {p0}, Lcom/meizu/settings/voicewakeup/RecordSpectrumView;->access$100(Lcom/meizu/settings/voicewakeup/RecordSpectrumView;)Landroid/view/View$OnClickListener;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_19
    return-void
.end method
