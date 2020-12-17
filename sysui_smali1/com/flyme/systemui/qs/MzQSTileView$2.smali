.class Lcom/flyme/systemui/qs/MzQSTileView$2;
.super Ljava/lang/Object;
.source "MzQSTileView.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/systemui/qs/MzQSTileView;->recreateLabel()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemui/qs/MzQSTileView;


# direct methods
.method constructor <init>(Lcom/flyme/systemui/qs/MzQSTileView;)V
    .registers 2

    .line 151
    iput-object p1, p0, Lcom/flyme/systemui/qs/MzQSTileView$2;->this$0:Lcom/flyme/systemui/qs/MzQSTileView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .registers 2

    .line 154
    iget-object p0, p0, Lcom/flyme/systemui/qs/MzQSTileView$2;->this$0:Lcom/flyme/systemui/qs/MzQSTileView;

    invoke-static {p0}, Lcom/flyme/systemui/qs/MzQSTileView;->access$000(Lcom/flyme/systemui/qs/MzQSTileView;)Landroid/view/View$OnLongClickListener;

    move-result-object p0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-interface {p0, p1}, Landroid/view/View$OnLongClickListener;->onLongClick(Landroid/view/View;)Z

    move-result p0

    return p0
.end method
