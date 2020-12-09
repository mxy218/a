.class Lcom/android/server/wm/WindowState$1;
.super Ljava/lang/Object;
.source "WindowState.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/WindowState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/android/server/wm/WindowState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 616
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)I
    .registers 3

    .line 619
    iget p1, p1, Lcom/android/server/wm/WindowState;->mSubLayer:I

    .line 620
    iget p2, p2, Lcom/android/server/wm/WindowState;->mSubLayer:I

    .line 621
    if-lt p1, p2, :cond_d

    if-ne p1, p2, :cond_b

    if-gez p2, :cond_b

    goto :goto_d

    .line 628
    :cond_b
    const/4 p1, 0x1

    return p1

    .line 626
    :cond_d
    :goto_d
    const/4 p1, -0x1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 616
    check-cast p1, Lcom/android/server/wm/WindowState;

    check-cast p2, Lcom/android/server/wm/WindowState;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/WindowState$1;->compare(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)I

    move-result p1

    return p1
.end method
