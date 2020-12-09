.class final Lcom/android/server/am/PendingIntentRecord$Key;
.super Ljava/lang/Object;
.source "PendingIntentRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/PendingIntentRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Key"
.end annotation


# static fields
.field private static final ODD_PRIME_NUMBER:I = 0x25


# instance fields
.field final activity:Landroid/os/IBinder;

.field allIntents:[Landroid/content/Intent;

.field allResolvedTypes:[Ljava/lang/String;

.field final flags:I

.field final hashCode:I

.field final options:Lcom/android/server/wm/SafeActivityOptions;

.field final packageName:Ljava/lang/String;

.field final requestCode:I

.field final requestIntent:Landroid/content/Intent;

.field final requestResolvedType:Ljava/lang/String;

.field final type:I

.field final userId:I

.field final who:Ljava/lang/String;


# direct methods
.method constructor <init>(ILjava/lang/String;Landroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILcom/android/server/wm/SafeActivityOptions;I)V
    .registers 13

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput p1, p0, Lcom/android/server/am/PendingIntentRecord$Key;->type:I

    .line 92
    iput-object p2, p0, Lcom/android/server/am/PendingIntentRecord$Key;->packageName:Ljava/lang/String;

    .line 93
    iput-object p3, p0, Lcom/android/server/am/PendingIntentRecord$Key;->activity:Landroid/os/IBinder;

    .line 94
    iput-object p4, p0, Lcom/android/server/am/PendingIntentRecord$Key;->who:Ljava/lang/String;

    .line 95
    iput p5, p0, Lcom/android/server/am/PendingIntentRecord$Key;->requestCode:I

    .line 96
    const/4 v0, 0x0

    if-eqz p6, :cond_16

    array-length v1, p6

    add-int/lit8 v1, v1, -0x1

    aget-object v1, p6, v1

    goto :goto_17

    :cond_16
    move-object v1, v0

    :goto_17
    iput-object v1, p0, Lcom/android/server/am/PendingIntentRecord$Key;->requestIntent:Landroid/content/Intent;

    .line 97
    if-eqz p7, :cond_20

    array-length v0, p7

    add-int/lit8 v0, v0, -0x1

    aget-object v0, p7, v0

    :cond_20
    iput-object v0, p0, Lcom/android/server/am/PendingIntentRecord$Key;->requestResolvedType:Ljava/lang/String;

    .line 98
    iput-object p6, p0, Lcom/android/server/am/PendingIntentRecord$Key;->allIntents:[Landroid/content/Intent;

    .line 99
    iput-object p7, p0, Lcom/android/server/am/PendingIntentRecord$Key;->allResolvedTypes:[Ljava/lang/String;

    .line 100
    iput p8, p0, Lcom/android/server/am/PendingIntentRecord$Key;->flags:I

    .line 101
    iput-object p9, p0, Lcom/android/server/am/PendingIntentRecord$Key;->options:Lcom/android/server/wm/SafeActivityOptions;

    .line 102
    iput p10, p0, Lcom/android/server/am/PendingIntentRecord$Key;->userId:I

    .line 104
    nop

    .line 105
    const/16 p6, 0x353

    add-int/2addr p6, p8

    .line 106
    mul-int/lit8 p6, p6, 0x25

    add-int/2addr p6, p5

    .line 107
    mul-int/lit8 p6, p6, 0x25

    add-int/2addr p6, p10

    .line 108
    if-eqz p4, :cond_3f

    .line 109
    mul-int/lit8 p6, p6, 0x25

    invoke-virtual {p4}, Ljava/lang/String;->hashCode()I

    move-result p4

    add-int/2addr p6, p4

    .line 111
    :cond_3f
    if-eqz p3, :cond_48

    .line 112
    mul-int/lit8 p6, p6, 0x25

    invoke-virtual {p3}, Ljava/lang/Object;->hashCode()I

    move-result p3

    add-int/2addr p6, p3

    .line 114
    :cond_48
    iget-object p3, p0, Lcom/android/server/am/PendingIntentRecord$Key;->requestIntent:Landroid/content/Intent;

    if-eqz p3, :cond_53

    .line 115
    mul-int/lit8 p6, p6, 0x25

    invoke-virtual {p3}, Landroid/content/Intent;->filterHashCode()I

    move-result p3

    add-int/2addr p6, p3

    .line 117
    :cond_53
    iget-object p3, p0, Lcom/android/server/am/PendingIntentRecord$Key;->requestResolvedType:Ljava/lang/String;

    if-eqz p3, :cond_5e

    .line 118
    mul-int/lit8 p6, p6, 0x25

    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result p3

    add-int/2addr p6, p3

    .line 120
    :cond_5e
    mul-int/lit8 p6, p6, 0x25

    if-eqz p2, :cond_67

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p2

    goto :goto_68

    :cond_67
    const/4 p2, 0x0

    :goto_68
    add-int/2addr p6, p2

    .line 121
    mul-int/lit8 p6, p6, 0x25

    add-int/2addr p6, p1

    .line 122
    iput p6, p0, Lcom/android/server/am/PendingIntentRecord$Key;->hashCode:I

    .line 125
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    .line 129
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 130
    return v0

    .line 133
    :cond_4
    :try_start_4
    check-cast p1, Lcom/android/server/am/PendingIntentRecord$Key;

    .line 134
    iget v1, p0, Lcom/android/server/am/PendingIntentRecord$Key;->type:I

    iget v2, p1, Lcom/android/server/am/PendingIntentRecord$Key;->type:I

    if-eq v1, v2, :cond_d

    .line 135
    return v0

    .line 137
    :cond_d
    iget v1, p0, Lcom/android/server/am/PendingIntentRecord$Key;->userId:I

    iget v2, p1, Lcom/android/server/am/PendingIntentRecord$Key;->userId:I

    if-eq v1, v2, :cond_14

    .line 138
    return v0

    .line 140
    :cond_14
    iget-object v1, p0, Lcom/android/server/am/PendingIntentRecord$Key;->packageName:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/server/am/PendingIntentRecord$Key;->packageName:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1f

    .line 141
    return v0

    .line 143
    :cond_1f
    iget-object v1, p0, Lcom/android/server/am/PendingIntentRecord$Key;->activity:Landroid/os/IBinder;

    iget-object v2, p1, Lcom/android/server/am/PendingIntentRecord$Key;->activity:Landroid/os/IBinder;

    if-eq v1, v2, :cond_26

    .line 144
    return v0

    .line 146
    :cond_26
    iget-object v1, p0, Lcom/android/server/am/PendingIntentRecord$Key;->who:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/server/am/PendingIntentRecord$Key;->who:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_31

    .line 147
    return v0

    .line 149
    :cond_31
    iget v1, p0, Lcom/android/server/am/PendingIntentRecord$Key;->requestCode:I

    iget v2, p1, Lcom/android/server/am/PendingIntentRecord$Key;->requestCode:I

    if-eq v1, v2, :cond_38

    .line 150
    return v0

    .line 152
    :cond_38
    iget-object v1, p0, Lcom/android/server/am/PendingIntentRecord$Key;->requestIntent:Landroid/content/Intent;

    iget-object v2, p1, Lcom/android/server/am/PendingIntentRecord$Key;->requestIntent:Landroid/content/Intent;

    if-eq v1, v2, :cond_4e

    .line 153
    iget-object v1, p0, Lcom/android/server/am/PendingIntentRecord$Key;->requestIntent:Landroid/content/Intent;

    if-eqz v1, :cond_4b

    .line 154
    iget-object v1, p0, Lcom/android/server/am/PendingIntentRecord$Key;->requestIntent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result v1

    if-nez v1, :cond_4e

    .line 155
    return v0

    .line 157
    :cond_4b
    if-eqz v2, :cond_4e

    .line 158
    return v0

    .line 161
    :cond_4e
    iget-object v1, p0, Lcom/android/server/am/PendingIntentRecord$Key;->requestResolvedType:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/server/am/PendingIntentRecord$Key;->requestResolvedType:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_59

    .line 162
    return v0

    .line 164
    :cond_59
    iget v1, p0, Lcom/android/server/am/PendingIntentRecord$Key;->flags:I

    iget p1, p1, Lcom/android/server/am/PendingIntentRecord$Key;->flags:I
    :try_end_5d
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_5d} :catch_62

    if-eq v1, p1, :cond_60

    .line 165
    return v0

    .line 167
    :cond_60
    const/4 p1, 0x1

    return p1

    .line 168
    :catch_62
    move-exception p1

    .line 170
    return v0
.end method

.method public hashCode()I
    .registers 2

    .line 174
    iget v0, p0, Lcom/android/server/am/PendingIntentRecord$Key;->hashCode:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 178
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Key{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/am/PendingIntentRecord$Key;->typeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " pkg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/PendingIntentRecord$Key;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " intent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    iget-object v1, p0, Lcom/android/server/am/PendingIntentRecord$Key;->requestIntent:Landroid/content/Intent;

    if-eqz v1, :cond_2b

    .line 181
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2, v3, v3}, Landroid/content/Intent;->toShortString(ZZZZ)Ljava/lang/String;

    move-result-object v1

    goto :goto_2d

    :cond_2b
    const-string v1, "<null>"

    :goto_2d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " flags=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/PendingIntentRecord$Key;->flags:I

    .line 182
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " u="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/PendingIntentRecord$Key;->userId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 178
    return-object v0
.end method

.method typeName()Ljava/lang/String;
    .registers 3

    .line 186
    iget v0, p0, Lcom/android/server/am/PendingIntentRecord$Key;->type:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_25

    const/4 v1, 0x2

    if-eq v0, v1, :cond_21

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1e

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1a

    const/4 v1, 0x5

    if-eq v0, v1, :cond_16

    .line 198
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 194
    :cond_16
    const-string/jumbo v0, "startForegroundService"

    return-object v0

    .line 192
    :cond_1a
    const-string/jumbo v0, "startService"

    return-object v0

    .line 196
    :cond_1e
    const-string v0, "activityResult"

    return-object v0

    .line 188
    :cond_21
    const-string/jumbo v0, "startActivity"

    return-object v0

    .line 190
    :cond_25
    const-string v0, "broadcastIntent"

    return-object v0
.end method
