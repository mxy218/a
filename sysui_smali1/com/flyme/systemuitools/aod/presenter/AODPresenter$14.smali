.class Lcom/flyme/systemuitools/aod/presenter/AODPresenter$14;
.super Ljava/lang/Object;
.source "AODPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/systemuitools/aod/presenter/AODPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemuitools/aod/presenter/AODPresenter;


# direct methods
.method constructor <init>(Lcom/flyme/systemuitools/aod/presenter/AODPresenter;)V
    .registers 2

    .line 1285
    iput-object p1, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter$14;->this$0:Lcom/flyme/systemuitools/aod/presenter/AODPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 1

    .line 1288
    iget-object p0, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter$14;->this$0:Lcom/flyme/systemuitools/aod/presenter/AODPresenter;

    invoke-static {p0}, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->access$3400(Lcom/flyme/systemuitools/aod/presenter/AODPresenter;)I

    return-void
.end method
