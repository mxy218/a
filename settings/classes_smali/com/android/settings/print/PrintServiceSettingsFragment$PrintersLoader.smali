.class Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersLoader;
.super Landroidx/loader/content/Loader;
.source "PrintServiceSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/print/PrintServiceSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PrintersLoader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/loader/content/Loader<",
        "Ljava/util/List<",
        "Landroid/print/PrinterInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field private mDiscoverySession:Landroid/print/PrinterDiscoverySession;

.field private final mPrinters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/print/PrinterId;",
            "Landroid/print/PrinterInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 641
    invoke-direct {p0, p1}, Landroidx/loader/content/Loader;-><init>(Landroid/content/Context;)V

    .line 635
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersLoader;->mPrinters:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$900(Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersLoader;)Landroid/print/PrinterDiscoverySession;
    .registers 1

    .line 629
    iget-object p0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersLoader;->mDiscoverySession:Landroid/print/PrinterDiscoverySession;

    return-object p0
.end method

.method private cancelInternal()Z
    .registers 2

    .line 711
    iget-object v0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersLoader;->mDiscoverySession:Landroid/print/PrinterDiscoverySession;

    if-eqz v0, :cond_11

    .line 712
    invoke-virtual {v0}, Landroid/print/PrinterDiscoverySession;->isPrinterDiscoveryStarted()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 713
    iget-object p0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersLoader;->mDiscoverySession:Landroid/print/PrinterDiscoverySession;

    invoke-virtual {p0}, Landroid/print/PrinterDiscoverySession;->stopPrinterDiscovery()V

    const/4 p0, 0x1

    return p0

    :cond_11
    const/4 p0, 0x0

    return p0
.end method

.method private loadInternal()V
    .registers 3

    .line 720
    iget-object v0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersLoader;->mDiscoverySession:Landroid/print/PrinterDiscoverySession;

    if-nez v0, :cond_21

    .line 721
    invoke-virtual {p0}, Landroidx/loader/content/Loader;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "print"

    .line 722
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/print/PrintManager;

    .line 723
    invoke-virtual {v0}, Landroid/print/PrintManager;->createPrinterDiscoverySession()Landroid/print/PrinterDiscoverySession;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersLoader;->mDiscoverySession:Landroid/print/PrinterDiscoverySession;

    .line 724
    iget-object v0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersLoader;->mDiscoverySession:Landroid/print/PrinterDiscoverySession;

    new-instance v1, Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersLoader$1;

    invoke-direct {v1, p0}, Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersLoader$1;-><init>(Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersLoader;)V

    invoke-virtual {v0, v1}, Landroid/print/PrinterDiscoverySession;->setOnPrintersChangeListener(Landroid/print/PrinterDiscoverySession$OnPrintersChangeListener;)V

    .line 732
    :cond_21
    iget-object p0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersLoader;->mDiscoverySession:Landroid/print/PrinterDiscoverySession;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/print/PrinterDiscoverySession;->startPrinterDiscovery(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public deliverResult(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/print/PrinterInfo;",
            ">;)V"
        }
    .end annotation

    .line 646
    invoke-virtual {p0}, Landroidx/loader/content/Loader;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 647
    invoke-super {p0, p1}, Landroidx/loader/content/Loader;->deliverResult(Ljava/lang/Object;)V

    :cond_9
    return-void
.end method

.method protected onAbandon()V
    .registers 1

    .line 707
    invoke-virtual {p0}, Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersLoader;->onStopLoading()V

    return-void
.end method

.method protected onCancelLoad()Z
    .registers 1

    .line 686
    invoke-direct {p0}, Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersLoader;->cancelInternal()Z

    move-result p0

    return p0
.end method

.method protected onForceLoad()V
    .registers 1

    .line 678
    invoke-direct {p0}, Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersLoader;->loadInternal()V

    return-void
.end method

.method protected onReset()V
    .registers 2

    .line 694
    invoke-virtual {p0}, Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersLoader;->onStopLoading()V

    .line 695
    iget-object v0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersLoader;->mPrinters:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 696
    iget-object v0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersLoader;->mDiscoverySession:Landroid/print/PrinterDiscoverySession;

    if-eqz v0, :cond_12

    .line 697
    invoke-virtual {v0}, Landroid/print/PrinterDiscoverySession;->destroy()V

    const/4 v0, 0x0

    .line 698
    iput-object v0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersLoader;->mDiscoverySession:Landroid/print/PrinterDiscoverySession;

    :cond_12
    return-void
.end method

.method protected onStartLoading()V
    .registers 3

    .line 658
    iget-object v0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersLoader;->mPrinters:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_16

    .line 659
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersLoader;->mPrinters:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, v0}, Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersLoader;->deliverResult(Ljava/util/List;)V

    .line 662
    :cond_16
    invoke-virtual {p0}, Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersLoader;->onForceLoad()V

    return-void
.end method

.method protected onStopLoading()V
    .registers 1

    .line 670
    invoke-virtual {p0}, Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersLoader;->onCancelLoad()Z

    return-void
.end method
