.class Lcom/android/server/os/BoostInfo;
.super Ljava/lang/Object;
.source "BoostInfo.java"


# static fields
.field public static benchmarkAppConfig:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mBoostName:Ljava/lang/String;

.field private mConfigArrays:[Ljava/lang/String;

.field private mConfigString:Ljava/lang/String;

.field private mDefaultTimeout:Ljava/lang/String;

.field private mFinalArrays:[Ljava/lang/String;

.field private mTimeout:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/os/BoostInfo;->benchmarkAppConfig:Ljava/util/ArrayList;

    .line 29
    sget-object v0, Lcom/android/server/os/BoostInfo;->benchmarkAppConfig:Ljava/util/ArrayList;

    const-string v1, "com.glbenchmark.glbenchmark27"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 30
    sget-object v0, Lcom/android/server/os/BoostInfo;->benchmarkAppConfig:Ljava/util/ArrayList;

    const-string v1, "com.antutu.ABenchMark5"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31
    sget-object v0, Lcom/android/server/os/BoostInfo;->benchmarkAppConfig:Ljava/util/ArrayList;

    const-string v1, "com.andromeda.androbench2"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    sget-object v0, Lcom/android/server/os/BoostInfo;->benchmarkAppConfig:Ljava/util/ArrayList;

    const-string v1, "com.antutu.ABenchMark"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33
    sget-object v0, Lcom/android/server/os/BoostInfo;->benchmarkAppConfig:Ljava/util/ArrayList;

    const-string v1, "com.antutu.benchmark.bench64"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    sget-object v0, Lcom/android/server/os/BoostInfo;->benchmarkAppConfig:Ljava/util/ArrayList;

    const-string v1, "com.antutu.ABenchMark.GL2"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    sget-object v0, Lcom/android/server/os/BoostInfo;->benchmarkAppConfig:Ljava/util/ArrayList;

    const-string v2, "com.appems.hawkeye"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    sget-object v0, Lcom/android/server/os/BoostInfo;->benchmarkAppConfig:Ljava/util/ArrayList;

    const-string v2, "com.aurorasoftworks.quadrant.ui.standard"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    sget-object v0, Lcom/android/server/os/BoostInfo;->benchmarkAppConfig:Ljava/util/ArrayList;

    const-string v2, "com.dianxinos.toolbox.benchmark"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    sget-object v0, Lcom/android/server/os/BoostInfo;->benchmarkAppConfig:Ljava/util/ArrayList;

    const-string v2, "com.drolez.nbench"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    sget-object v0, Lcom/android/server/os/BoostInfo;->benchmarkAppConfig:Ljava/util/ArrayList;

    const-string v2, "com.eembc.coremark"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    sget-object v0, Lcom/android/server/os/BoostInfo;->benchmarkAppConfig:Ljava/util/ArrayList;

    const-string v2, "com.futuremark.dmandroid.application"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    sget-object v0, Lcom/android/server/os/BoostInfo;->benchmarkAppConfig:Ljava/util/ArrayList;

    const-string v2, "com.ludashi.benchmark"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    sget-object v0, Lcom/android/server/os/BoostInfo;->benchmarkAppConfig:Ljava/util/ArrayList;

    const-string v2, "com.primatelabs.geekbench"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    sget-object v0, Lcom/android/server/os/BoostInfo;->benchmarkAppConfig:Ljava/util/ArrayList;

    const-string v2, "com.primatelabs.geekbench3"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    sget-object v0, Lcom/android/server/os/BoostInfo;->benchmarkAppConfig:Ljava/util/ArrayList;

    const-string v2, "eu.chainfire.cfbench"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    sget-object v0, Lcom/android/server/os/BoostInfo;->benchmarkAppConfig:Ljava/util/ArrayList;

    const-string/jumbo v2, "org.zeroxlab.zeroxbenchmark"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    sget-object v0, Lcom/android/server/os/BoostInfo;->benchmarkAppConfig:Ljava/util/ArrayList;

    const-string/jumbo v2, "se.nena.nenamark1"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    sget-object v0, Lcom/android/server/os/BoostInfo;->benchmarkAppConfig:Ljava/util/ArrayList;

    const-string v2, "com.greenecomputing.linpack"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    sget-object v0, Lcom/android/server/os/BoostInfo;->benchmarkAppConfig:Ljava/util/ArrayList;

    const-string v2, "com.quicinc.vellamo"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    sget-object v0, Lcom/android/server/os/BoostInfo;->benchmarkAppConfig:Ljava/util/ArrayList;

    const-string v2, "com.rightware.BasemarkX_Free"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    sget-object v0, Lcom/android/server/os/BoostInfo;->benchmarkAppConfig:Ljava/util/ArrayList;

    const-string v2, "com.aurorasoftworks.quadrant.ui.advanced"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    sget-object v0, Lcom/android/server/os/BoostInfo;->benchmarkAppConfig:Ljava/util/ArrayList;

    const-string v2, "com.futuremark.pcmark.android.benchmark"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    sget-object v0, Lcom/android/server/os/BoostInfo;->benchmarkAppConfig:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    sget-object v0, Lcom/android/server/os/BoostInfo;->benchmarkAppConfig:Ljava/util/ArrayList;

    const-string v1, "com.antutu.ABenchMark.GL3"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    sget-object v0, Lcom/android/server/os/BoostInfo;->benchmarkAppConfig:Ljava/util/ArrayList;

    const-string v1, "com.antutu.benchmark.full"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    sget-object v0, Lcom/android/server/os/BoostInfo;->benchmarkAppConfig:Ljava/util/ArrayList;

    const-string/jumbo v1, "net.kishonti.gfxbench.gl.v40000.corporate"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "boostValue"  # Ljava/lang/String;

    .line 59
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/android/server/os/BoostInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "boostName"  # Ljava/lang/String;
    .param p2, "boostValue"  # Ljava/lang/String;

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/os/BoostInfo;->mConfigString:Ljava/lang/String;

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "boostName ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " configarrange ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/perf/LogUtils;->logBoostInfo(Ljava/lang/String;)V

    .line 65
    iput-object p2, p0, Lcom/android/server/os/BoostInfo;->mConfigString:Ljava/lang/String;

    .line 66
    iput-object p1, p0, Lcom/android/server/os/BoostInfo;->mBoostName:Ljava/lang/String;

    .line 67
    iget-object v0, p0, Lcom/android/server/os/BoostInfo;->mConfigString:Ljava/lang/String;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/os/BoostInfo;->mConfigArrays:[Ljava/lang/String;

    .line 68
    iget-object v0, p0, Lcom/android/server/os/BoostInfo;->mConfigArrays:[Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/os/BoostInfo;->convertArrayFormat([Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Lcom/android/server/os/BoostInfo;->mConfigArrays:[Ljava/lang/String;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/server/os/BoostInfo;->mDefaultTimeout:Ljava/lang/String;

    .line 70
    return-void
.end method

.method private convertArrayFormat([Ljava/lang/String;)V
    .registers 8
    .param p1, "configArrays"  # [Ljava/lang/String;

    .line 92
    array-length v0, p1

    div-int/lit8 v0, v0, 0x3

    .line 93
    .local v0, "newArrayLength":I
    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/os/BoostInfo;->mFinalArrays:[Ljava/lang/String;

    .line 94
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    if-ge v1, v0, :cond_3b

    .line 95
    iget-object v2, p0, Lcom/android/server/os/BoostInfo;->mFinalArrays:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    mul-int/lit8 v4, v1, 0x3

    aget-object v4, p1, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    mul-int/lit8 v5, v1, 0x3

    add-int/lit8 v5, v5, 0x1

    aget-object v5, p1, v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    mul-int/lit8 v4, v1, 0x3

    add-int/lit8 v4, v4, 0x2

    aget-object v4, p1, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    .line 94
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 99
    .end local v1  # "i":I
    :cond_3b
    return-void
.end method

.method private convertArrayFormatWithTimeout([Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p1, "configArrays"  # [Ljava/lang/String;
    .param p2, "timeout"  # Ljava/lang/String;

    .line 121
    array-length v0, p1

    div-int/lit8 v0, v0, 0x3

    .line 122
    .local v0, "newArrayLength":I
    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/os/BoostInfo;->mFinalArrays:[Ljava/lang/String;

    .line 123
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    if-ge v1, v0, :cond_35

    .line 124
    iget-object v2, p0, Lcom/android/server/os/BoostInfo;->mFinalArrays:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    mul-int/lit8 v4, v1, 0x3

    aget-object v4, p1, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    mul-int/lit8 v5, v1, 0x3

    add-int/lit8 v5, v5, 0x1

    aget-object v5, p1, v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    .line 123
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 128
    .end local v1  # "i":I
    :cond_35
    return-void
.end method

.method static isBenchMarkApp(Ljava/lang/String;)Z
    .registers 2
    .param p0, "packageName"  # Ljava/lang/String;

    .line 143
    sget-object v0, Lcom/android/server/os/BoostInfo;->benchmarkAppConfig:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method getBoostName()Ljava/lang/String;
    .registers 2

    .line 73
    iget-object v0, p0, Lcom/android/server/os/BoostInfo;->mBoostName:Ljava/lang/String;

    return-object v0
.end method

.method getDefaultBoostConfig()Ljava/lang/String;
    .registers 2

    .line 116
    iget-object v0, p0, Lcom/android/server/os/BoostInfo;->mConfigString:Ljava/lang/String;

    return-object v0
.end method

.method public getDefaultTimeout()Ljava/lang/String;
    .registers 2

    .line 81
    iget-object v0, p0, Lcom/android/server/os/BoostInfo;->mDefaultTimeout:Ljava/lang/String;

    return-object v0
.end method

.method getFinalBoostConfig()[Ljava/lang/String;
    .registers 2

    .line 107
    iget-object v0, p0, Lcom/android/server/os/BoostInfo;->mFinalArrays:[Ljava/lang/String;

    return-object v0
.end method

.method public getTimeout()Ljava/lang/String;
    .registers 2

    .line 77
    iget-object v0, p0, Lcom/android/server/os/BoostInfo;->mTimeout:Ljava/lang/String;

    return-object v0
.end method

.method public updateTimeout(Ljava/lang/String;)V
    .registers 4
    .param p1, "timeout"  # Ljava/lang/String;

    .line 131
    if-eqz p1, :cond_12

    iget-object v0, p0, Lcom/android/server/os/BoostInfo;->mTimeout:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 132
    iput-object p1, p0, Lcom/android/server/os/BoostInfo;->mTimeout:Ljava/lang/String;

    .line 133
    iget-object v0, p0, Lcom/android/server/os/BoostInfo;->mConfigArrays:[Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/android/server/os/BoostInfo;->convertArrayFormatWithTimeout([Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_21

    .line 134
    :cond_12
    if-nez p1, :cond_21

    iget-object v0, p0, Lcom/android/server/os/BoostInfo;->mTimeout:Ljava/lang/String;

    if-eqz v0, :cond_21

    .line 135
    iget-object v0, p0, Lcom/android/server/os/BoostInfo;->mDefaultTimeout:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/os/BoostInfo;->mTimeout:Ljava/lang/String;

    .line 136
    iget-object v0, p0, Lcom/android/server/os/BoostInfo;->mConfigArrays:[Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/os/BoostInfo;->convertArrayFormat([Ljava/lang/String;)V

    .line 138
    :cond_21
    :goto_21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BoostInfo_updateTimeout = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mTimeout = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/os/BoostInfo;->mTimeout:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " configarrange ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/os/BoostInfo;->mFinalArrays:[Ljava/lang/String;

    .line 139
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 138
    invoke-static {v0}, Landroid/perf/LogUtils;->logBoostInfo(Ljava/lang/String;)V

    .line 140
    return-void
.end method
