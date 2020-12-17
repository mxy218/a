.class Lcom/flyme/systemuitools/aod/view/AODDisplayImpl$2;
.super Ljava/lang/Object;
.source "AODDisplayImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/systemuitools/aod/view/AODDisplayImpl;
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

    .line 85
    iput-object p1, p0, Lcom/flyme/systemuitools/aod/view/AODDisplayImpl$2;->this$0:Lcom/flyme/systemuitools/aod/view/AODDisplayImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 1

    .line 88
    iget-object p0, p0, Lcom/flyme/systemuitools/aod/view/AODDisplayImpl$2;->this$0:Lcom/flyme/systemuitools/aod/view/AODDisplayImpl;

    invoke-static {p0}, Lcom/flyme/systemuitools/aod/view/AODDisplayImpl;->access$300(Lcom/flyme/systemuitools/aod/view/AODDisplayImpl;)V

    return-void
.end method
