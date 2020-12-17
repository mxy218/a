.class Lcom/flyme/systemuitools/aod/view/AODDisplayImpl$3;
.super Landroid/database/ContentObserver;
.source "AODDisplayImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/systemuitools/aod/view/AODDisplayImpl;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemuitools/aod/view/AODDisplayImpl;


# direct methods
.method constructor <init>(Lcom/flyme/systemuitools/aod/view/AODDisplayImpl;Landroid/os/Handler;)V
    .registers 3

    .line 109
    iput-object p1, p0, Lcom/flyme/systemuitools/aod/view/AODDisplayImpl$3;->this$0:Lcom/flyme/systemuitools/aod/view/AODDisplayImpl;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 3

    .line 112
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    const-string p1, "AODDisplayImpl"

    const-string v0, "display size change"

    .line 113
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    iget-object p1, p0, Lcom/flyme/systemuitools/aod/view/AODDisplayImpl$3;->this$0:Lcom/flyme/systemuitools/aod/view/AODDisplayImpl;

    invoke-static {p1}, Lcom/flyme/systemuitools/aod/view/AODDisplayImpl;->access$400(Lcom/flyme/systemuitools/aod/view/AODDisplayImpl;)Lcom/flyme/systemuitools/aod/view/AODDisplayView;

    move-result-object p1

    if-eqz p1, :cond_1b

    .line 115
    iget-object p0, p0, Lcom/flyme/systemuitools/aod/view/AODDisplayImpl$3;->this$0:Lcom/flyme/systemuitools/aod/view/AODDisplayImpl;

    invoke-static {p0}, Lcom/flyme/systemuitools/aod/view/AODDisplayImpl;->access$400(Lcom/flyme/systemuitools/aod/view/AODDisplayImpl;)Lcom/flyme/systemuitools/aod/view/AODDisplayView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/flyme/systemuitools/aod/view/AODDisplayView;->displaySizeChange()V

    :cond_1b
    return-void
.end method
