.class Lcom/android/server/usage/AppTimeLimitController$UserData;
.super Ljava/lang/Object;
.source "AppTimeLimitController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usage/AppTimeLimitController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UserData"
.end annotation


# instance fields
.field public final currentlyActive:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final observedMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/usage/AppTimeLimitController$UsageGroup;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/usage/AppTimeLimitController;

.field private userId:I


# direct methods
.method private constructor <init>(Lcom/android/server/usage/AppTimeLimitController;I)V
    .registers 3

    .line 92
    iput-object p1, p0, Lcom/android/server/usage/AppTimeLimitController$UserData;->this$0:Lcom/android/server/usage/AppTimeLimitController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/usage/AppTimeLimitController$UserData;->currentlyActive:Landroid/util/ArrayMap;

    .line 90
    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/usage/AppTimeLimitController$UserData;->observedMap:Landroid/util/ArrayMap;

    .line 93
    iput p2, p0, Lcom/android/server/usage/AppTimeLimitController$UserData;->userId:I

    .line 94
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/usage/AppTimeLimitController;ILcom/android/server/usage/AppTimeLimitController$1;)V
    .registers 4

    .line 81
    invoke-direct {p0, p1, p2}, Lcom/android/server/usage/AppTimeLimitController$UserData;-><init>(Lcom/android/server/usage/AppTimeLimitController;I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/usage/AppTimeLimitController$UserData;)I
    .registers 1

    .line 81
    iget p0, p0, Lcom/android/server/usage/AppTimeLimitController$UserData;->userId:I

    return p0
.end method


# virtual methods
.method addUsageGroup(Lcom/android/server/usage/AppTimeLimitController$UsageGroup;)V
    .registers 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 110
    iget-object v0, p1, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mObserved:[Ljava/lang/String;

    array-length v0, v0

    .line 111
    const/4 v1, 0x0

    :goto_4
    if-ge v1, v0, :cond_28

    .line 112
    iget-object v2, p0, Lcom/android/server/usage/AppTimeLimitController$UserData;->observedMap:Landroid/util/ArrayMap;

    iget-object v3, p1, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mObserved:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 113
    if-nez v2, :cond_22

    .line 114
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 115
    iget-object v3, p0, Lcom/android/server/usage/AppTimeLimitController$UserData;->observedMap:Landroid/util/ArrayMap;

    iget-object v4, p1, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mObserved:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    :cond_22
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 119
    :cond_28
    return-void
.end method

.method dump(Ljava/io/PrintWriter;)V
    .registers 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 139
    const-string v0, " userId="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 140
    iget v0, p0, Lcom/android/server/usage/AppTimeLimitController$UserData;->userId:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 141
    const-string v0, " Currently Active:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 142
    iget-object v0, p0, Lcom/android/server/usage/AppTimeLimitController$UserData;->currentlyActive:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 143
    const/4 v1, 0x0

    move v2, v1

    :goto_17
    const-string v3, ", "

    if-ge v2, v0, :cond_2c

    .line 144
    iget-object v4, p0, Lcom/android/server/usage/AppTimeLimitController$UserData;->currentlyActive:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 145
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 143
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 147
    :cond_2c
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 148
    const-string v0, " Observed Entities:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 149
    iget-object v0, p0, Lcom/android/server/usage/AppTimeLimitController$UserData;->observedMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 150
    nop

    :goto_3b
    if-ge v1, v0, :cond_4e

    .line 151
    iget-object v2, p0, Lcom/android/server/usage/AppTimeLimitController$UserData;->observedMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 152
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 150
    add-int/lit8 v1, v1, 0x1

    goto :goto_3b

    .line 154
    :cond_4e
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 155
    return-void
.end method

.method isActive([Ljava/lang/String;)Z
    .registers 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 99
    array-length v0, p1

    .line 100
    const/4 v1, 0x0

    move v2, v1

    :goto_3
    if-ge v2, v0, :cond_14

    .line 101
    iget-object v3, p0, Lcom/android/server/usage/AppTimeLimitController$UserData;->currentlyActive:Landroid/util/ArrayMap;

    aget-object v4, p1, v2

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 102
    const/4 p1, 0x1

    return p1

    .line 100
    :cond_11
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 105
    :cond_14
    return v1
.end method

.method removeUsageGroup(Lcom/android/server/usage/AppTimeLimitController$UsageGroup;)V
    .registers 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 123
    iget-object v0, p1, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mObserved:[Ljava/lang/String;

    array-length v0, v0

    .line 124
    const/4 v1, 0x0

    :goto_4
    if-ge v1, v0, :cond_25

    .line 125
    iget-object v2, p1, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mObserved:[Ljava/lang/String;

    aget-object v2, v2, v1

    .line 126
    iget-object v3, p0, Lcom/android/server/usage/AppTimeLimitController$UserData;->observedMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 127
    if-eqz v3, :cond_22

    .line 128
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 129
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_22

    .line 131
    iget-object v3, p0, Lcom/android/server/usage/AppTimeLimitController$UserData;->observedMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    :cond_22
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 135
    :cond_25
    return-void
.end method
