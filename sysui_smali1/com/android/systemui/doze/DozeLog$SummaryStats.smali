.class Lcom/android/systemui/doze/DozeLog$SummaryStats;
.super Ljava/lang/Object;
.source "DozeLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/doze/DozeLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SummaryStats"
.end annotation


# instance fields
.field private mCount:I


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 293
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/doze/DozeLog$1;)V
    .registers 2

    .line 293
    invoke-direct {p0}, Lcom/android/systemui/doze/DozeLog$SummaryStats;-><init>()V

    return-void
.end method


# virtual methods
.method public append()V
    .registers 2

    .line 297
    iget v0, p0, Lcom/android/systemui/doze/DozeLog$SummaryStats;->mCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/systemui/doze/DozeLog$SummaryStats;->mCount:I

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 9

    .line 301
    iget v0, p0, Lcom/android/systemui/doze/DozeLog$SummaryStats;->mCount:I

    if-nez v0, :cond_5

    return-void

    :cond_5
    const-string v0, "    "

    .line 302
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 303
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, ": n="

    .line 304
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 305
    iget p2, p0, Lcom/android/systemui/doze/DozeLog$SummaryStats;->mCount:I

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(I)V

    const-string p2, " ("

    .line 306
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 307
    iget p0, p0, Lcom/android/systemui/doze/DozeLog$SummaryStats;->mCount:I

    int-to-double v0, p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {}, Lcom/android/systemui/doze/DozeLog;->access$100()J

    move-result-wide v4

    sub-long/2addr v2, v4

    long-to-double v2, v2

    div-double/2addr v0, v2

    const-wide v2, 0x408f400000000000L  # 1000.0

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x404e000000000000L  # 60.0

    mul-double/2addr v0, v2

    mul-double/2addr v0, v2

    .line 309
    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->print(D)V

    const-string p0, "/hr)"

    .line 310
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 311
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    return-void
.end method
