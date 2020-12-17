.class Lcom/flyme/systemuitools/aod/presenter/AODPresenter$11;
.super Landroid/database/ContentObserver;
.source "AODPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->watchForFingerprintAuthenticating()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemuitools/aod/presenter/AODPresenter;


# direct methods
.method constructor <init>(Lcom/flyme/systemuitools/aod/presenter/AODPresenter;Landroid/os/Handler;)V
    .registers 3

    .line 1136
    iput-object p1, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter$11;->this$0:Lcom/flyme/systemuitools/aod/presenter/AODPresenter;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 3

    .line 1139
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 1140
    iget-object p1, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter$11;->this$0:Lcom/flyme/systemuitools/aod/presenter/AODPresenter;

    invoke-static {p1}, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->access$3000(Lcom/flyme/systemuitools/aod/presenter/AODPresenter;)Z

    move-result v0

    invoke-static {p1, v0}, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->access$602(Lcom/flyme/systemuitools/aod/presenter/AODPresenter;Z)Z

    .line 1141
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mIsFingerprintAuthenticating = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter$11;->this$0:Lcom/flyme/systemuitools/aod/presenter/AODPresenter;

    invoke-static {p0}, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->access$600(Lcom/flyme/systemuitools/aod/presenter/AODPresenter;)Z

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AODPresenter"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
