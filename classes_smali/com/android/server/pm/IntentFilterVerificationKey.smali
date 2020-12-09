.class Lcom/android/server/pm/IntentFilterVerificationKey;
.super Ljava/lang/Object;
.source "IntentFilterVerificationKey.java"


# instance fields
.field public className:Ljava/lang/String;

.field public domains:Ljava/lang/String;

.field public packageName:Ljava/lang/String;


# direct methods
.method public constructor <init>([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    array-length v1, p1

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_14

    aget-object v3, p1, v2

    .line 33
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 35
    :cond_14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/IntentFilterVerificationKey;->domains:Ljava/lang/String;

    .line 36
    iput-object p2, p0, Lcom/android/server/pm/IntentFilterVerificationKey;->packageName:Ljava/lang/String;

    .line 37
    iput-object p3, p0, Lcom/android/server/pm/IntentFilterVerificationKey;->className:Ljava/lang/String;

    .line 38
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    .line 42
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 43
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_49

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_49

    .line 45
    :cond_12
    check-cast p1, Lcom/android/server/pm/IntentFilterVerificationKey;

    .line 47
    iget-object v2, p0, Lcom/android/server/pm/IntentFilterVerificationKey;->domains:Ljava/lang/String;

    if-eqz v2, :cond_21

    iget-object v3, p1, Lcom/android/server/pm/IntentFilterVerificationKey;->domains:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_26

    goto :goto_25

    :cond_21
    iget-object v2, p1, Lcom/android/server/pm/IntentFilterVerificationKey;->domains:Ljava/lang/String;

    if-eqz v2, :cond_26

    :goto_25
    return v1

    .line 48
    :cond_26
    iget-object v2, p0, Lcom/android/server/pm/IntentFilterVerificationKey;->className:Ljava/lang/String;

    if-eqz v2, :cond_33

    iget-object v3, p1, Lcom/android/server/pm/IntentFilterVerificationKey;->className:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_38

    goto :goto_37

    :cond_33
    iget-object v2, p1, Lcom/android/server/pm/IntentFilterVerificationKey;->className:Ljava/lang/String;

    if-eqz v2, :cond_38

    .line 49
    :goto_37
    return v1

    .line 50
    :cond_38
    iget-object v2, p0, Lcom/android/server/pm/IntentFilterVerificationKey;->packageName:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/server/pm/IntentFilterVerificationKey;->packageName:Ljava/lang/String;

    if-eqz v2, :cond_45

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_48

    goto :goto_47

    :cond_45
    if-eqz p1, :cond_48

    .line 51
    :goto_47
    return v1

    .line 53
    :cond_48
    return v0

    .line 43
    :cond_49
    :goto_49
    return v1
.end method

.method public hashCode()I
    .registers 4

    .line 58
    iget-object v0, p0, Lcom/android/server/pm/IntentFilterVerificationKey;->domains:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_b

    :cond_a
    move v0, v1

    .line 59
    :goto_b
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/android/server/pm/IntentFilterVerificationKey;->packageName:Ljava/lang/String;

    if-eqz v2, :cond_16

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_17

    :cond_16
    move v2, v1

    :goto_17
    add-int/2addr v0, v2

    .line 60
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/android/server/pm/IntentFilterVerificationKey;->className:Ljava/lang/String;

    if-eqz v2, :cond_22

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_22
    add-int/2addr v0, v1

    .line 61
    return v0
.end method
