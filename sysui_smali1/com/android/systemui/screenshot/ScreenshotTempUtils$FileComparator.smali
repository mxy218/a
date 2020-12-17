.class Lcom/android/systemui/screenshot/ScreenshotTempUtils$FileComparator;
.super Ljava/lang/Object;
.source "ScreenshotTempUtils.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/screenshot/ScreenshotTempUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FileComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/android/systemui/screenshot/ScreenshotTempUtils$FileInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/systemui/screenshot/ScreenshotTempUtils$FileInfo;Lcom/android/systemui/screenshot/ScreenshotTempUtils$FileInfo;)I
    .registers 5

    .line 128
    iget-wide p0, p1, Lcom/android/systemui/screenshot/ScreenshotTempUtils$FileInfo;->lastModified:J

    iget-wide v0, p2, Lcom/android/systemui/screenshot/ScreenshotTempUtils$FileInfo;->lastModified:J

    cmp-long p0, p0, v0

    if-gez p0, :cond_a

    const/4 p0, -0x1

    return p0

    :cond_a
    const/4 p0, 0x1

    return p0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 126
    check-cast p1, Lcom/android/systemui/screenshot/ScreenshotTempUtils$FileInfo;

    check-cast p2, Lcom/android/systemui/screenshot/ScreenshotTempUtils$FileInfo;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/screenshot/ScreenshotTempUtils$FileComparator;->compare(Lcom/android/systemui/screenshot/ScreenshotTempUtils$FileInfo;Lcom/android/systemui/screenshot/ScreenshotTempUtils$FileInfo;)I

    move-result p0

    return p0
.end method
