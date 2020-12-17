.class public final Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;
.super Ljava/lang/Object;
.source "UserSwitcherController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/UserSwitcherController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UserRecord"
.end annotation


# instance fields
.field public enforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

.field public final info:Landroid/content/pm/UserInfo;

.field public final isAddUser:Z

.field public final isCurrent:Z

.field public isDisabledByAdmin:Z

.field public final isGuest:Z

.field public final isRestricted:Z

.field public isSwitchToEnabled:Z

.field public final picture:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/content/pm/UserInfo;Landroid/graphics/Bitmap;ZZZZZ)V
    .registers 8

    .line 728
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 729
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->info:Landroid/content/pm/UserInfo;

    .line 730
    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->picture:Landroid/graphics/Bitmap;

    .line 731
    iput-boolean p3, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->isGuest:Z

    .line 732
    iput-boolean p4, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->isCurrent:Z

    .line 733
    iput-boolean p5, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->isAddUser:Z

    .line 734
    iput-boolean p6, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->isRestricted:Z

    .line 735
    iput-boolean p7, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->isSwitchToEnabled:Z

    return-void
.end method


# virtual methods
.method public copyWithIsCurrent(Z)Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;
    .registers 11

    .line 739
    new-instance v8, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->info:Landroid/content/pm/UserInfo;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->picture:Landroid/graphics/Bitmap;

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->isGuest:Z

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->isAddUser:Z

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->isRestricted:Z

    iget-boolean v7, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->isSwitchToEnabled:Z

    move-object v0, v8

    move v4, p1

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;-><init>(Landroid/content/pm/UserInfo;Landroid/graphics/Bitmap;ZZZZZ)V

    return-object v8
.end method

.method public resolveId()I
    .registers 2

    .line 744
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->isGuest:Z

    if-nez v0, :cond_c

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->info:Landroid/content/pm/UserInfo;

    if-nez p0, :cond_9

    goto :goto_c

    .line 747
    :cond_9
    iget p0, p0, Landroid/content/pm/UserInfo;->id:I

    return p0

    :cond_c
    :goto_c
    const/16 p0, -0x2710

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 751
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UserRecord("

    .line 752
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 753
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->info:Landroid/content/pm/UserInfo;

    if-eqz v1, :cond_27

    const-string v1, "name=\""

    .line 754
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->info:Landroid/content/pm/UserInfo;

    iget-object v1, v1, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\" id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->info:Landroid/content/pm/UserInfo;

    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_3a

    .line 756
    :cond_27
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->isGuest:Z

    if-eqz v1, :cond_31

    const-string v1, "<add guest placeholder>"

    .line 757
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3a

    .line 758
    :cond_31
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->isAddUser:Z

    if-eqz v1, :cond_3a

    const-string v1, "<add user placeholder>"

    .line 759
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 762
    :cond_3a
    :goto_3a
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->isGuest:Z

    if-eqz v1, :cond_43

    const-string v1, " <isGuest>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 763
    :cond_43
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->isAddUser:Z

    if-eqz v1, :cond_4c

    const-string v1, " <isAddUser>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 764
    :cond_4c
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->isCurrent:Z

    if-eqz v1, :cond_55

    const-string v1, " <isCurrent>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 765
    :cond_55
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->picture:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_5e

    const-string v1, " <hasPicture>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 766
    :cond_5e
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->isRestricted:Z

    if-eqz v1, :cond_67

    const-string v1, " <isRestricted>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 767
    :cond_67
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->isDisabledByAdmin:Z

    if-eqz v1, :cond_7a

    const-string v1, " <isDisabledByAdmin>"

    .line 768
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " enforcedAdmin="

    .line 769
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->enforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 771
    :cond_7a
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->isSwitchToEnabled:Z

    if-eqz p0, :cond_83

    const-string p0, " <isSwitchToEnabled>"

    .line 772
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_83
    const/16 p0, 0x29

    .line 774
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 775
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
