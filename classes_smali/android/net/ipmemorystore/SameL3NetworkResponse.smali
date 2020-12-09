.class public Landroid/net/ipmemorystore/SameL3NetworkResponse;
.super Ljava/lang/Object;
.source "SameL3NetworkResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/ipmemorystore/SameL3NetworkResponse$NetworkSameness;
    }
.end annotation


# static fields
.field public static final NETWORK_DIFFERENT:I = 0x2

.field public static final NETWORK_NEVER_CONNECTED:I = 0x3

.field public static final NETWORK_SAME:I = 0x1


# instance fields
.field public final confidence:F

.field public final l2Key1:Ljava/lang/String;

.field public final l2Key2:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/net/ipmemorystore/SameL3NetworkResponseParcelable;)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 105
    iget-object v0, p1, Landroid/net/ipmemorystore/SameL3NetworkResponseParcelable;->l2Key1:Ljava/lang/String;

    iget-object v1, p1, Landroid/net/ipmemorystore/SameL3NetworkResponseParcelable;->l2Key2:Ljava/lang/String;

    iget p1, p1, Landroid/net/ipmemorystore/SameL3NetworkResponseParcelable;->confidence:F

    invoke-direct {p0, v0, v1, p1}, Landroid/net/ipmemorystore/SameL3NetworkResponse;-><init>(Ljava/lang/String;Ljava/lang/String;F)V

    .line 106
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;F)V
    .registers 4

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput-object p1, p0, Landroid/net/ipmemorystore/SameL3NetworkResponse;->l2Key1:Ljava/lang/String;

    .line 98
    iput-object p2, p0, Landroid/net/ipmemorystore/SameL3NetworkResponse;->l2Key2:Ljava/lang/String;

    .line 99
    iput p3, p0, Landroid/net/ipmemorystore/SameL3NetworkResponse;->confidence:F

    .line 100
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    .line 122
    instance-of v0, p1, Landroid/net/ipmemorystore/SameL3NetworkResponse;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 123
    :cond_6
    check-cast p1, Landroid/net/ipmemorystore/SameL3NetworkResponse;

    .line 124
    iget-object v0, p0, Landroid/net/ipmemorystore/SameL3NetworkResponse;->l2Key1:Ljava/lang/String;

    iget-object v2, p1, Landroid/net/ipmemorystore/SameL3NetworkResponse;->l2Key1:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    iget-object v0, p0, Landroid/net/ipmemorystore/SameL3NetworkResponse;->l2Key2:Ljava/lang/String;

    iget-object v2, p1, Landroid/net/ipmemorystore/SameL3NetworkResponse;->l2Key2:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    iget v0, p0, Landroid/net/ipmemorystore/SameL3NetworkResponse;->confidence:F

    iget p1, p1, Landroid/net/ipmemorystore/SameL3NetworkResponse;->confidence:F

    cmpl-float p1, v0, p1

    if-nez p1, :cond_25

    const/4 v1, 0x1

    :cond_25
    return v1
.end method

.method public final getNetworkSameness()I
    .registers 6

    .line 90
    iget v0, p0, Landroid/net/ipmemorystore/SameL3NetworkResponse;->confidence:F

    float-to-double v1, v0

    const-wide/high16 v3, 0x3ff0000000000000L  # 1.0

    cmpl-double v1, v1, v3

    if-gtz v1, :cond_1c

    float-to-double v1, v0

    const-wide/16 v3, 0x0

    cmpg-double v1, v1, v3

    if-gez v1, :cond_11

    goto :goto_1c

    .line 91
    :cond_11
    float-to-double v0, v0

    const-wide/high16 v2, 0x3fe0000000000000L  # 0.5

    cmpl-double v0, v0, v2

    if-lez v0, :cond_1a

    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x2

    :goto_1b
    return v0

    .line 90
    :cond_1c
    :goto_1c
    const/4 v0, 0x3

    return v0
.end method

.method public hashCode()I
    .registers 4

    .line 130
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroid/net/ipmemorystore/SameL3NetworkResponse;->l2Key1:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/net/ipmemorystore/SameL3NetworkResponse;->l2Key2:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Landroid/net/ipmemorystore/SameL3NetworkResponse;->confidence:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toParcelable()Landroid/net/ipmemorystore/SameL3NetworkResponseParcelable;
    .registers 3

    .line 111
    new-instance v0, Landroid/net/ipmemorystore/SameL3NetworkResponseParcelable;

    invoke-direct {v0}, Landroid/net/ipmemorystore/SameL3NetworkResponseParcelable;-><init>()V

    .line 112
    iget-object v1, p0, Landroid/net/ipmemorystore/SameL3NetworkResponse;->l2Key1:Ljava/lang/String;

    iput-object v1, v0, Landroid/net/ipmemorystore/SameL3NetworkResponseParcelable;->l2Key1:Ljava/lang/String;

    .line 113
    iget-object v1, p0, Landroid/net/ipmemorystore/SameL3NetworkResponse;->l2Key2:Ljava/lang/String;

    iput-object v1, v0, Landroid/net/ipmemorystore/SameL3NetworkResponseParcelable;->l2Key2:Ljava/lang/String;

    .line 114
    iget v1, p0, Landroid/net/ipmemorystore/SameL3NetworkResponse;->confidence:F

    iput v1, v0, Landroid/net/ipmemorystore/SameL3NetworkResponseParcelable;->confidence:F

    .line 115
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 136
    invoke-virtual {p0}, Landroid/net/ipmemorystore/SameL3NetworkResponse;->getNetworkSameness()I

    move-result v0

    const/4 v1, 0x1

    const-string v2, "\""

    if-eq v0, v1, :cond_6e

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4f

    const/4 v1, 0x3

    if-eq v0, v1, :cond_30

    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Buggy sameness value ? \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/ipmemorystore/SameL3NetworkResponse;->l2Key1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\", \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/ipmemorystore/SameL3NetworkResponse;->l2Key2:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 142
    :cond_30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/ipmemorystore/SameL3NetworkResponse;->l2Key1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\" can\'t be tested against \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/ipmemorystore/SameL3NetworkResponse;->l2Key2:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 140
    :cond_4f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/ipmemorystore/SameL3NetworkResponse;->l2Key1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\" different L3 network from \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/ipmemorystore/SameL3NetworkResponse;->l2Key2:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 138
    :cond_6e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/ipmemorystore/SameL3NetworkResponse;->l2Key1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\" same L3 network as \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/ipmemorystore/SameL3NetworkResponse;->l2Key2:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
