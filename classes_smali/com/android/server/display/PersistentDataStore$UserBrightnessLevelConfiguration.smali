.class public final Lcom/android/server/display/PersistentDataStore$UserBrightnessLevelConfiguration;
.super Ljava/lang/Object;
.source "PersistentDataStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/PersistentDataStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UserBrightnessLevelConfiguration"
.end annotation


# instance fields
.field private mBrightness:[F

.field private final mDescription:Ljava/lang/String;

.field private mLux:[F

.field private mUserAdjustment:F

.field private mUserBrightness:F

.field private mUserLux:F


# direct methods
.method public constructor <init>([F[FLjava/lang/String;FFF)V
    .registers 7
    .param p1, "lux"  # [F
    .param p2, "brightness"  # [F
    .param p3, "description"  # Ljava/lang/String;
    .param p4, "userLux"  # F
    .param p5, "userAdjustment"  # F
    .param p6, "userBrightness"  # F

    .line 752
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 753
    iput-object p1, p0, Lcom/android/server/display/PersistentDataStore$UserBrightnessLevelConfiguration;->mLux:[F

    .line 754
    iput-object p2, p0, Lcom/android/server/display/PersistentDataStore$UserBrightnessLevelConfiguration;->mBrightness:[F

    .line 755
    iput-object p3, p0, Lcom/android/server/display/PersistentDataStore$UserBrightnessLevelConfiguration;->mDescription:Ljava/lang/String;

    .line 756
    iput p4, p0, Lcom/android/server/display/PersistentDataStore$UserBrightnessLevelConfiguration;->mUserLux:F

    .line 757
    iput p5, p0, Lcom/android/server/display/PersistentDataStore$UserBrightnessLevelConfiguration;->mUserAdjustment:F

    .line 758
    iput p6, p0, Lcom/android/server/display/PersistentDataStore$UserBrightnessLevelConfiguration;->mUserBrightness:F

    .line 759
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"  # Ljava/lang/Object;

    .line 783
    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    .line 784
    return v0

    .line 786
    :cond_4
    instance-of v1, p1, Landroid/hardware/display/BrightnessConfiguration;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 787
    return v2

    .line 789
    :cond_a
    move-object v1, p1

    check-cast v1, Lcom/android/server/display/PersistentDataStore$UserBrightnessLevelConfiguration;

    .line 790
    .local v1, "other":Lcom/android/server/display/PersistentDataStore$UserBrightnessLevelConfiguration;
    iget-object v3, p0, Lcom/android/server/display/PersistentDataStore$UserBrightnessLevelConfiguration;->mLux:[F

    iget-object v4, v1, Lcom/android/server/display/PersistentDataStore$UserBrightnessLevelConfiguration;->mLux:[F

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v3

    if-eqz v3, :cond_62

    iget-object v3, p0, Lcom/android/server/display/PersistentDataStore$UserBrightnessLevelConfiguration;->mBrightness:[F

    iget-object v4, v1, Lcom/android/server/display/PersistentDataStore$UserBrightnessLevelConfiguration;->mBrightness:[F

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v3

    if-eqz v3, :cond_62

    iget-object v3, p0, Lcom/android/server/display/PersistentDataStore$UserBrightnessLevelConfiguration;->mDescription:Ljava/lang/String;

    iget-object v4, v1, Lcom/android/server/display/PersistentDataStore$UserBrightnessLevelConfiguration;->mDescription:Ljava/lang/String;

    .line 791
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_62

    iget v3, p0, Lcom/android/server/display/PersistentDataStore$UserBrightnessLevelConfiguration;->mUserLux:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    iget v4, v1, Lcom/android/server/display/PersistentDataStore$UserBrightnessLevelConfiguration;->mUserLux:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_62

    iget v3, p0, Lcom/android/server/display/PersistentDataStore$UserBrightnessLevelConfiguration;->mUserAdjustment:F

    .line 792
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    iget v4, v1, Lcom/android/server/display/PersistentDataStore$UserBrightnessLevelConfiguration;->mUserAdjustment:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_62

    iget v3, p0, Lcom/android/server/display/PersistentDataStore$UserBrightnessLevelConfiguration;->mUserBrightness:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    iget v4, v1, Lcom/android/server/display/PersistentDataStore$UserBrightnessLevelConfiguration;->mUserBrightness:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_62

    goto :goto_63

    :cond_62
    move v0, v2

    .line 790
    :goto_63
    return v0
.end method

.method public getCurve()Landroid/util/Pair;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "[F[F>;"
        }
    .end annotation

    .line 762
    iget-object v0, p0, Lcom/android/server/display/PersistentDataStore$UserBrightnessLevelConfiguration;->mLux:[F

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/PersistentDataStore$UserBrightnessLevelConfiguration;->mBrightness:[F

    array-length v2, v1

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .registers 2

    .line 766
    iget-object v0, p0, Lcom/android/server/display/PersistentDataStore$UserBrightnessLevelConfiguration;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getUserAdjustment()F
    .registers 2

    .line 774
    iget v0, p0, Lcom/android/server/display/PersistentDataStore$UserBrightnessLevelConfiguration;->mUserAdjustment:F

    return v0
.end method

.method public getUserBrightness()F
    .registers 2

    .line 778
    iget v0, p0, Lcom/android/server/display/PersistentDataStore$UserBrightnessLevelConfiguration;->mUserBrightness:F

    return v0
.end method

.method public getUserLux()F
    .registers 2

    .line 770
    iget v0, p0, Lcom/android/server/display/PersistentDataStore$UserBrightnessLevelConfiguration;->mUserLux:F

    return v0
.end method

.method public hashCode()I
    .registers 4

    .line 816
    const/4 v0, 0x1

    .line 817
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/android/server/display/PersistentDataStore$UserBrightnessLevelConfiguration;->mLux:[F

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([F)I

    move-result v2

    add-int/2addr v1, v2

    .line 818
    .end local v0  # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/android/server/display/PersistentDataStore$UserBrightnessLevelConfiguration;->mBrightness:[F

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([F)I

    move-result v2

    add-int/2addr v0, v2

    .line 819
    .end local v1  # "result":I
    .restart local v0  # "result":I
    iget-object v1, p0, Lcom/android/server/display/PersistentDataStore$UserBrightnessLevelConfiguration;->mDescription:Ljava/lang/String;

    if-eqz v1, :cond_1f

    .line 820
    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int v0, v2, v1

    .line 822
    :cond_1f
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .line 797
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "UserBrightnessLevelConfiguration{["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 798
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/android/server/display/PersistentDataStore$UserBrightnessLevelConfiguration;->mLux:[F

    array-length v1, v1

    .line 799
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_b
    if-ge v2, v1, :cond_32

    .line 800
    const-string v3, ", "

    if-eqz v2, :cond_14

    .line 801
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 803
    :cond_14
    const-string v4, "("

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/display/PersistentDataStore$UserBrightnessLevelConfiguration;->mLux:[F

    aget v4, v4, v2

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/display/PersistentDataStore$UserBrightnessLevelConfiguration;->mBrightness:[F

    aget v3, v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 799
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 805
    .end local v2  # "i":I
    :cond_32
    const-string v2, "], \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 806
    iget-object v2, p0, Lcom/android/server/display/PersistentDataStore$UserBrightnessLevelConfiguration;->mDescription:Ljava/lang/String;

    if-eqz v2, :cond_3e

    .line 807
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 809
    :cond_3e
    const-string v2, "\', \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/display/PersistentDataStore$UserBrightnessLevelConfiguration;->mUserLux:F

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/display/PersistentDataStore$UserBrightnessLevelConfiguration;->mUserAdjustment:F

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/display/PersistentDataStore$UserBrightnessLevelConfiguration;->mUserBrightness:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 810
    const-string v2, "\'}"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 811
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
