.class Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker$MyComparator;
.super Ljava/lang/Object;
.source "CustomRingtonePicker.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker$RingtoneInfoWrap;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 393
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private isComparable(Ljava/lang/Object;)Z
    .registers 2

    if-eqz p1, :cond_8

    .line 428
    instance-of p0, p1, Ljava/lang/Comparable;

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method


# virtual methods
.method public compare(Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker$RingtoneInfoWrap;Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker$RingtoneInfoWrap;)I
    .registers 6

    .line 397
    iget-object p1, p1, Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker$RingtoneInfoWrap;->displayNameToPinyin:Ljava/lang/String;

    .line 398
    iget-object p2, p2, Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker$RingtoneInfoWrap;->displayNameToPinyin:Ljava/lang/String;

    .line 400
    invoke-direct {p0, p1}, Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker$MyComparator;->isComparable(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 401
    invoke-direct {p0, p2}, Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker$MyComparator;->isComparable(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 402
    :cond_f
    invoke-direct {p0, p2}, Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker$MyComparator;->isComparable(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_17

    const/4 p0, -0x1

    return p0

    :cond_17
    const/4 p0, 0x0

    .line 408
    invoke-static {p1}, Lcom/meizu/settings/utils/MzUtils;->isNonalphabetic(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, "#"

    if-eqz v0, :cond_31

    .line 409
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    move p0, v1

    .line 413
    :cond_31
    invoke-static {p2}, Lcom/meizu/settings/utils/MzUtils;->isNonalphabetic(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_47

    .line 414
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    move p0, v1

    .line 418
    :cond_47
    invoke-interface {p1, p2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result p1

    if-eqz p0, :cond_4f

    neg-int p0, p1

    return p0

    :cond_4f
    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 392
    check-cast p1, Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker$RingtoneInfoWrap;

    check-cast p2, Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker$RingtoneInfoWrap;

    invoke-virtual {p0, p1, p2}, Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker$MyComparator;->compare(Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker$RingtoneInfoWrap;Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker$RingtoneInfoWrap;)I

    move-result p0

    return p0
.end method
