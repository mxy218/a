.class Lcom/meizu/settings/appclone/AppCloneState$4;
.super Ljava/lang/Object;
.source "AppCloneState.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/appclone/AppCloneState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/meizu/settings/appclone/AppCloneBaseInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 534
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Lcom/meizu/settings/appclone/AppCloneBaseInfo;Lcom/meizu/settings/appclone/AppCloneBaseInfo;)I
    .registers 3

    .line 536
    invoke-virtual {p1}, Lcom/meizu/settings/appclone/AppCloneBaseInfo;->getTitleToPinyin()Ljava/lang/String;

    move-result-object p0

    .line 537
    invoke-virtual {p2}, Lcom/meizu/settings/appclone/AppCloneBaseInfo;->getTitleToPinyin()Ljava/lang/String;

    move-result-object p1

    .line 538
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_19

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_19

    .line 539
    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 540
    :cond_19
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_21

    const/4 p0, 0x1

    return p0

    .line 542
    :cond_21
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_29

    const/4 p0, -0x1

    return p0

    :cond_29
    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 534
    check-cast p1, Lcom/meizu/settings/appclone/AppCloneBaseInfo;

    check-cast p2, Lcom/meizu/settings/appclone/AppCloneBaseInfo;

    invoke-virtual {p0, p1, p2}, Lcom/meizu/settings/appclone/AppCloneState$4;->compare(Lcom/meizu/settings/appclone/AppCloneBaseInfo;Lcom/meizu/settings/appclone/AppCloneBaseInfo;)I

    move-result p0

    return p0
.end method
