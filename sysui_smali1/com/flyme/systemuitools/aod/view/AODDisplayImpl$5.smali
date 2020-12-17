.class Lcom/flyme/systemuitools/aod/view/AODDisplayImpl$5;
.super Ljava/lang/Object;
.source "AODDisplayImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/systemuitools/aod/view/AODDisplayImpl;->exitAODMode()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemuitools/aod/view/AODDisplayImpl;


# direct methods
.method constructor <init>(Lcom/flyme/systemuitools/aod/view/AODDisplayImpl;)V
    .registers 2

    .line 179
    iput-object p1, p0, Lcom/flyme/systemuitools/aod/view/AODDisplayImpl$5;->this$0:Lcom/flyme/systemuitools/aod/view/AODDisplayImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 182
    iget-object v0, p0, Lcom/flyme/systemuitools/aod/view/AODDisplayImpl$5;->this$0:Lcom/flyme/systemuitools/aod/view/AODDisplayImpl;

    invoke-static {v0}, Lcom/flyme/systemuitools/aod/view/AODDisplayImpl;->access$600(Lcom/flyme/systemuitools/aod/view/AODDisplayImpl;)Landroid/widget/RelativeLayout;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 183
    iget-object p0, p0, Lcom/flyme/systemuitools/aod/view/AODDisplayImpl$5;->this$0:Lcom/flyme/systemuitools/aod/view/AODDisplayImpl;

    invoke-static {p0}, Lcom/flyme/systemuitools/aod/view/AODDisplayImpl;->access$600(Lcom/flyme/systemuitools/aod/view/AODDisplayImpl;)Landroid/widget/RelativeLayout;

    move-result-object p0

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_13
    return-void
.end method
