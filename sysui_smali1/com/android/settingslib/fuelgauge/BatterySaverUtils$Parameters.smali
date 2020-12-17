.class Lcom/android/settingslib/fuelgauge/BatterySaverUtils$Parameters;
.super Ljava/lang/Object;
.source "BatterySaverUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/fuelgauge/BatterySaverUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Parameters"
.end annotation


# instance fields
.field public final endNth:I

.field private final mContext:Landroid/content/Context;

.field public final startNth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput-object p1, p0, Lcom/android/settingslib/fuelgauge/BatterySaverUtils$Parameters;->mContext:Landroid/content/Context;

    .line 92
    iget-object p1, p0, Lcom/android/settingslib/fuelgauge/BatterySaverUtils$Parameters;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "low_power_mode_suggestion_params"

    invoke-static {p1, v0}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 94
    new-instance v0, Landroid/util/KeyValueListParser;

    const/16 v1, 0x2c

    invoke-direct {v0, v1}, Landroid/util/KeyValueListParser;-><init>(C)V

    .line 96
    :try_start_18
    invoke-virtual {v0, p1}, Landroid/util/KeyValueListParser;->setString(Ljava/lang/String;)V
    :try_end_1b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_18 .. :try_end_1b} :catch_1c

    goto :goto_32

    .line 98
    :catch_1c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad constants: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "BatterySaverUtils"

    invoke-static {v1, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :goto_32
    const/4 p1, 0x4

    const-string/jumbo v1, "start_nth"

    .line 100
    invoke-virtual {v0, v1, p1}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/android/settingslib/fuelgauge/BatterySaverUtils$Parameters;->startNth:I

    const/16 p1, 0x8

    const-string v1, "end_nth"

    .line 101
    invoke-virtual {v0, v1, p1}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/android/settingslib/fuelgauge/BatterySaverUtils$Parameters;->endNth:I

    return-void
.end method
