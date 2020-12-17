.class Lcom/flyme/systemui/statusbar/phone/IconMerger$1;
.super Ljava/lang/Object;
.source "IconMerger.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/systemui/statusbar/phone/IconMerger;->checkOverflow(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemui/statusbar/phone/IconMerger;

.field final synthetic val$moreRequired:Z


# direct methods
.method constructor <init>(Lcom/flyme/systemui/statusbar/phone/IconMerger;Z)V
    .registers 3

    .line 92
    iput-object p1, p0, Lcom/flyme/systemui/statusbar/phone/IconMerger$1;->this$0:Lcom/flyme/systemui/statusbar/phone/IconMerger;

    iput-boolean p2, p0, Lcom/flyme/systemui/statusbar/phone/IconMerger$1;->val$moreRequired:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 95
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/phone/IconMerger$1;->this$0:Lcom/flyme/systemui/statusbar/phone/IconMerger;

    invoke-static {v0}, Lcom/flyme/systemui/statusbar/phone/IconMerger;->access$000(Lcom/flyme/systemui/statusbar/phone/IconMerger;)Landroid/view/View;

    move-result-object v0

    iget-boolean p0, p0, Lcom/flyme/systemui/statusbar/phone/IconMerger$1;->val$moreRequired:Z

    if-eqz p0, :cond_c

    const/4 p0, 0x0

    goto :goto_e

    :cond_c
    const/16 p0, 0x8

    :goto_e
    invoke-virtual {v0, p0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
