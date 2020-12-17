.class final Lcom/android/settings/print/PrintSettingsFragment$PrintJobsLoader;
.super Landroidx/loader/content/AsyncTaskLoader;
.source "PrintSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/print/PrintSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PrintJobsLoader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/loader/content/AsyncTaskLoader<",
        "Ljava/util/List<",
        "Landroid/print/PrintJobInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field private mPrintJobStateChangeListener:Landroid/print/PrintManager$PrintJobStateChangeListener;

.field private mPrintJobs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/print/PrintJobInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mPrintManager:Landroid/print/PrintManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 411
    invoke-direct {p0, p1}, Landroidx/loader/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 404
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/print/PrintSettingsFragment$PrintJobsLoader;->mPrintJobs:Ljava/util/List;

    const-string/jumbo v0, "print"

    .line 412
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/print/PrintManager;

    .line 414
    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    move-result p1

    .line 413
    invoke-virtual {v0, p1}, Landroid/print/PrintManager;->getGlobalPrintManagerForUser(I)Landroid/print/PrintManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/print/PrintSettingsFragment$PrintJobsLoader;->mPrintManager:Landroid/print/PrintManager;

    return-void
.end method

.method static synthetic access$700(Lcom/android/settings/print/PrintSettingsFragment$PrintJobsLoader;)V
    .registers 1

    .line 398
    invoke-virtual {p0}, Landroidx/loader/content/AsyncTaskLoader;->onForceLoad()V

    return-void
.end method


# virtual methods
.method public bridge synthetic deliverResult(Ljava/lang/Object;)V
    .registers 2

    .line 398
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/android/settings/print/PrintSettingsFragment$PrintJobsLoader;->deliverResult(Ljava/util/List;)V

    return-void
.end method

.method public deliverResult(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/print/PrintJobInfo;",
            ">;)V"
        }
    .end annotation

    .line 419
    invoke-virtual {p0}, Landroidx/loader/content/Loader;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 420
    invoke-super {p0, p1}, Landroidx/loader/content/Loader;->deliverResult(Ljava/lang/Object;)V

    :cond_9
    return-void
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .registers 1

    .line 398
    invoke-virtual {p0}, Lcom/android/settings/print/PrintSettingsFragment$PrintJobsLoader;->loadInBackground()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public loadInBackground()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/print/PrintJobInfo;",
            ">;"
        }
    .end annotation

    .line 479
    iget-object p0, p0, Lcom/android/settings/print/PrintSettingsFragment$PrintJobsLoader;->mPrintManager:Landroid/print/PrintManager;

    invoke-virtual {p0}, Landroid/print/PrintManager;->getPrintJobs()Ljava/util/List;

    move-result-object p0

    .line 480
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_c
    if-ge v2, v0, :cond_2b

    .line 482
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/print/PrintJob;

    invoke-virtual {v3}, Landroid/print/PrintJob;->getInfo()Landroid/print/PrintJobInfo;

    move-result-object v3

    .line 483
    invoke-static {v3}, Lcom/android/settings/print/PrintSettingPreferenceController;->shouldShowToUser(Landroid/print/PrintJobInfo;)Z

    move-result v4

    if-eqz v4, :cond_28

    if-nez v1, :cond_25

    .line 485
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 487
    :cond_25
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_28
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_2b
    return-object v1
.end method

.method protected onReset()V
    .registers 3

    .line 465
    invoke-virtual {p0}, Lcom/android/settings/print/PrintSettingsFragment$PrintJobsLoader;->onStopLoading()V

    .line 467
    iget-object v0, p0, Lcom/android/settings/print/PrintSettingsFragment$PrintJobsLoader;->mPrintJobs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 469
    iget-object v0, p0, Lcom/android/settings/print/PrintSettingsFragment$PrintJobsLoader;->mPrintJobStateChangeListener:Landroid/print/PrintManager$PrintJobStateChangeListener;

    if-eqz v0, :cond_14

    .line 470
    iget-object v1, p0, Lcom/android/settings/print/PrintSettingsFragment$PrintJobsLoader;->mPrintManager:Landroid/print/PrintManager;

    invoke-virtual {v1, v0}, Landroid/print/PrintManager;->removePrintJobStateChangeListener(Landroid/print/PrintManager$PrintJobStateChangeListener;)V

    const/4 v0, 0x0

    .line 472
    iput-object v0, p0, Lcom/android/settings/print/PrintSettingsFragment$PrintJobsLoader;->mPrintJobStateChangeListener:Landroid/print/PrintManager$PrintJobStateChangeListener;

    :cond_14
    return-void
.end method

.method protected onStartLoading()V
    .registers 3

    .line 430
    iget-object v0, p0, Lcom/android/settings/print/PrintSettingsFragment$PrintJobsLoader;->mPrintJobs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_12

    .line 431
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/settings/print/PrintSettingsFragment$PrintJobsLoader;->mPrintJobs:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, v0}, Lcom/android/settings/print/PrintSettingsFragment$PrintJobsLoader;->deliverResult(Ljava/util/List;)V

    .line 434
    :cond_12
    iget-object v0, p0, Lcom/android/settings/print/PrintSettingsFragment$PrintJobsLoader;->mPrintJobStateChangeListener:Landroid/print/PrintManager$PrintJobStateChangeListener;

    if-nez v0, :cond_24

    .line 435
    new-instance v0, Lcom/android/settings/print/PrintSettingsFragment$PrintJobsLoader$1;

    invoke-direct {v0, p0}, Lcom/android/settings/print/PrintSettingsFragment$PrintJobsLoader$1;-><init>(Lcom/android/settings/print/PrintSettingsFragment$PrintJobsLoader;)V

    iput-object v0, p0, Lcom/android/settings/print/PrintSettingsFragment$PrintJobsLoader;->mPrintJobStateChangeListener:Landroid/print/PrintManager$PrintJobStateChangeListener;

    .line 441
    iget-object v0, p0, Lcom/android/settings/print/PrintSettingsFragment$PrintJobsLoader;->mPrintManager:Landroid/print/PrintManager;

    iget-object v1, p0, Lcom/android/settings/print/PrintSettingsFragment$PrintJobsLoader;->mPrintJobStateChangeListener:Landroid/print/PrintManager$PrintJobStateChangeListener;

    invoke-virtual {v0, v1}, Landroid/print/PrintManager;->addPrintJobStateChangeListener(Landroid/print/PrintManager$PrintJobStateChangeListener;)V

    .line 445
    :cond_24
    iget-object v0, p0, Lcom/android/settings/print/PrintSettingsFragment$PrintJobsLoader;->mPrintJobs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 446
    invoke-virtual {p0}, Landroidx/loader/content/AsyncTaskLoader;->onForceLoad()V

    :cond_2f
    return-void
.end method

.method protected onStopLoading()V
    .registers 1

    .line 456
    invoke-virtual {p0}, Landroidx/loader/content/AsyncTaskLoader;->onCancelLoad()Z

    return-void
.end method
