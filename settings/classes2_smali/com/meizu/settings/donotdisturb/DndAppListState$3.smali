.class Lcom/meizu/settings/donotdisturb/DndAppListState$3;
.super Ljava/lang/Object;
.source "DndAppListState.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/donotdisturb/DndAppListState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/meizu/settings/donotdisturb/DndBaseInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 322
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Lcom/meizu/settings/donotdisturb/DndBaseInfo;Lcom/meizu/settings/donotdisturb/DndBaseInfo;)I
    .registers 3

    .line 324
    invoke-virtual {p1}, Lcom/meizu/settings/donotdisturb/DndBaseInfo;->getTitleToPinyin()Ljava/lang/String;

    move-result-object p0

    .line 325
    invoke-virtual {p2}, Lcom/meizu/settings/donotdisturb/DndBaseInfo;->getTitleToPinyin()Ljava/lang/String;

    move-result-object p1

    .line 326
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_19

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_19

    .line 327
    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 328
    :cond_19
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_21

    const/4 p0, 0x1

    return p0

    .line 330
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

    .line 322
    check-cast p1, Lcom/meizu/settings/donotdisturb/DndBaseInfo;

    check-cast p2, Lcom/meizu/settings/donotdisturb/DndBaseInfo;

    invoke-virtual {p0, p1, p2}, Lcom/meizu/settings/donotdisturb/DndAppListState$3;->compare(Lcom/meizu/settings/donotdisturb/DndBaseInfo;Lcom/meizu/settings/donotdisturb/DndBaseInfo;)I

    move-result p0

    return p0
.end method
