.class Lcom/android/server/pm/dex/ArtManagerService$ArtManagerInternalImpl;
.super Landroid/content/pm/dex/ArtManagerInternal;
.source "ArtManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/dex/ArtManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ArtManagerInternalImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/dex/ArtManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/pm/dex/ArtManagerService;)V
    .registers 2

    .line 632
    iput-object p1, p0, Lcom/android/server/pm/dex/ArtManagerService$ArtManagerInternalImpl;->this$0:Lcom/android/server/pm/dex/ArtManagerService;

    invoke-direct {p0}, Landroid/content/pm/dex/ArtManagerInternal;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/pm/dex/ArtManagerService;Lcom/android/server/pm/dex/ArtManagerService$1;)V
    .registers 3

    .line 632
    invoke-direct {p0, p1}, Lcom/android/server/pm/dex/ArtManagerService$ArtManagerInternalImpl;-><init>(Lcom/android/server/pm/dex/ArtManagerService;)V

    return-void
.end method


# virtual methods
.method public getPackageOptimizationInfo(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)Landroid/content/pm/dex/PackageOptimizationInfo;
    .registers 8

    .line 639
    const-string v0, "ArtManagerService"

    const-string v1, "error"

    :try_start_4
    invoke-static {p2}, Ldalvik/system/VMRuntime;->getInstructionSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 640
    nop

    .line 641
    invoke-virtual {p1}, Landroid/content/pm/ApplicationInfo;->getBaseCodePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Ldalvik/system/DexFile;->getDexFileOptimizationInfo(Ljava/lang/String;Ljava/lang/String;)Ldalvik/system/DexFile$OptimizationInfo;

    move-result-object v2

    .line 642
    invoke-virtual {v2}, Ldalvik/system/DexFile$OptimizationInfo;->getStatus()Ljava/lang/String;

    move-result-object v3

    .line 643
    invoke-virtual {v2}, Ldalvik/system/DexFile$OptimizationInfo;->getReason()Ljava/lang/String;

    move-result-object v1
    :try_end_19
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_19} :catch_40
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_19} :catch_1c

    .line 653
    move-object p1, v1

    move-object v1, v3

    goto :goto_5c

    .line 648
    :catch_1c
    move-exception v2

    .line 649
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Requested optimization status for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/pm/ApplicationInfo;->getBaseCodePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " due to an invalid abi "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 651
    nop

    .line 652
    move-object p1, v1

    goto :goto_5c

    .line 644
    :catch_40
    move-exception p2

    .line 645
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not get optimizations status for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/pm/ApplicationInfo;->getBaseCodePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 646
    nop

    .line 647
    nop

    .line 653
    move-object p1, v1

    .line 655
    :goto_5c
    invoke-static {v1}, Lcom/android/server/pm/dex/ArtManagerService;->access$100(Ljava/lang/String;)I

    move-result p2

    .line 656
    invoke-static {p1}, Lcom/android/server/pm/dex/ArtManagerService;->access$200(Ljava/lang/String;)I

    move-result p1

    .line 658
    new-instance v0, Landroid/content/pm/dex/PackageOptimizationInfo;

    invoke-direct {v0, p2, p1}, Landroid/content/pm/dex/PackageOptimizationInfo;-><init>(II)V

    return-object v0
.end method
