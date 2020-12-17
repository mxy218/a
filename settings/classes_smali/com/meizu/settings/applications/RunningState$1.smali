.class Lcom/meizu/settings/applications/RunningState$1;
.super Ljava/lang/Object;
.source "RunningState.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/applications/RunningState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/meizu/settings/applications/RunningState$MergedItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/applications/RunningState;


# direct methods
.method constructor <init>(Lcom/meizu/settings/applications/RunningState;)V
    .registers 2

    .line 154
    iput-object p1, p0, Lcom/meizu/settings/applications/RunningState$1;->this$0:Lcom/meizu/settings/applications/RunningState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/meizu/settings/applications/RunningState$MergedItem;Lcom/meizu/settings/applications/RunningState$MergedItem;)I
    .registers 10

    .line 162
    iget v0, p1, Lcom/meizu/settings/applications/RunningState$BaseItem;->mUserId:I

    iget v1, p2, Lcom/meizu/settings/applications/RunningState$BaseItem;->mUserId:I

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-eq v0, v1, :cond_17

    .line 163
    iget-object p0, p0, Lcom/meizu/settings/applications/RunningState$1;->this$0:Lcom/meizu/settings/applications/RunningState;

    iget p0, p0, Lcom/meizu/settings/applications/RunningState;->mMyUserId:I

    if-ne v0, p0, :cond_f

    return v2

    :cond_f
    if-ne v1, p0, :cond_12

    return v3

    :cond_12
    if-ge v0, v1, :cond_15

    goto :goto_16

    :cond_15
    move v2, v3

    :goto_16
    return v2

    .line 167
    :cond_17
    iget-object p0, p1, Lcom/meizu/settings/applications/RunningState$MergedItem;->mProcess:Lcom/meizu/settings/applications/RunningState$ProcessItem;

    iget-object v0, p2, Lcom/meizu/settings/applications/RunningState$MergedItem;->mProcess:Lcom/meizu/settings/applications/RunningState$ProcessItem;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_2c

    .line 168
    iget-object p0, p1, Lcom/meizu/settings/applications/RunningState$BaseItem;->mLabel:Ljava/lang/String;

    iget-object p1, p2, Lcom/meizu/settings/applications/RunningState$BaseItem;->mLabel:Ljava/lang/String;

    if-ne p0, p1, :cond_25

    return v1

    :cond_25
    if-eqz p0, :cond_2b

    .line 171
    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    :cond_2b
    return v2

    :cond_2c
    if-nez p0, :cond_2f

    return v2

    :cond_2f
    if-nez v0, :cond_32

    return v3

    .line 177
    :cond_32
    iget-object p0, p0, Lcom/meizu/settings/applications/RunningState$ProcessItem;->mRunningProcessInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 179
    iget-object v0, v0, Lcom/meizu/settings/applications/RunningState$ProcessItem;->mRunningProcessInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 181
    iget v4, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v5, 0x190

    if-lt v4, v5, :cond_3e

    move v4, v3

    goto :goto_3f

    :cond_3e
    move v4, v1

    .line 183
    :goto_3f
    iget v6, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    if-lt v6, v5, :cond_45

    move v5, v3

    goto :goto_46

    :cond_45
    move v5, v1

    :goto_46
    if-eq v4, v5, :cond_4c

    if-eqz v4, :cond_4b

    move v2, v3

    :cond_4b
    return v2

    .line 189
    :cond_4c
    iget v4, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->flags:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_54

    move v4, v3

    goto :goto_55

    :cond_54
    move v4, v1

    .line 191
    :goto_55
    iget v5, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->flags:I

    and-int/lit8 v5, v5, 0x4

    if-eqz v5, :cond_5d

    move v5, v3

    goto :goto_5e

    :cond_5d
    move v5, v1

    :goto_5e
    if-eq v4, v5, :cond_65

    if-eqz v4, :cond_63

    goto :goto_64

    :cond_63
    move v2, v3

    :goto_64
    return v2

    .line 198
    :cond_65
    iget p0, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->lru:I

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->lru:I

    if-eq p0, v0, :cond_70

    if-ge p0, v0, :cond_6e

    goto :goto_6f

    :cond_6e
    move v2, v3

    :goto_6f
    return v2

    .line 201
    :cond_70
    iget-object p0, p1, Lcom/meizu/settings/applications/RunningState$MergedItem;->mProcess:Lcom/meizu/settings/applications/RunningState$ProcessItem;

    iget-object p0, p0, Lcom/meizu/settings/applications/RunningState$BaseItem;->mLabel:Ljava/lang/String;

    iget-object p1, p2, Lcom/meizu/settings/applications/RunningState$MergedItem;->mProcess:Lcom/meizu/settings/applications/RunningState$ProcessItem;

    iget-object p1, p1, Lcom/meizu/settings/applications/RunningState$BaseItem;->mLabel:Ljava/lang/String;

    if-ne p0, p1, :cond_7b

    return v1

    :cond_7b
    if-nez p0, :cond_7e

    return v3

    :cond_7e
    if-nez p1, :cond_81

    return v2

    .line 206
    :cond_81
    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 154
    check-cast p1, Lcom/meizu/settings/applications/RunningState$MergedItem;

    check-cast p2, Lcom/meizu/settings/applications/RunningState$MergedItem;

    invoke-virtual {p0, p1, p2}, Lcom/meizu/settings/applications/RunningState$1;->compare(Lcom/meizu/settings/applications/RunningState$MergedItem;Lcom/meizu/settings/applications/RunningState$MergedItem;)I

    move-result p0

    return p0
.end method
