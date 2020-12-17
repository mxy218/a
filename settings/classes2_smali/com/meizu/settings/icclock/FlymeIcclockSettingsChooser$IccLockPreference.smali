.class Lcom/meizu/settings/icclock/FlymeIcclockSettingsChooser$IccLockPreference;
.super Landroid/preference/Preference;
.source "FlymeIcclockSettingsChooser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/icclock/FlymeIcclockSettingsChooser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IccLockPreference"
.end annotation


# instance fields
.field private mSlotId:I

.field private mSubInfoRecord:Landroid/telephony/SubscriptionInfo;

.field final synthetic this$0:Lcom/meizu/settings/icclock/FlymeIcclockSettingsChooser;


# direct methods
.method public constructor <init>(Lcom/meizu/settings/icclock/FlymeIcclockSettingsChooser;Landroid/content/Context;Landroid/telephony/SubscriptionInfo;I)V
    .registers 5

    .line 246
    iput-object p1, p0, Lcom/meizu/settings/icclock/FlymeIcclockSettingsChooser$IccLockPreference;->this$0:Lcom/meizu/settings/icclock/FlymeIcclockSettingsChooser;

    .line 247
    invoke-direct {p0, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 248
    iput-object p3, p0, Lcom/meizu/settings/icclock/FlymeIcclockSettingsChooser$IccLockPreference;->mSubInfoRecord:Landroid/telephony/SubscriptionInfo;

    .line 249
    iput p4, p0, Lcom/meizu/settings/icclock/FlymeIcclockSettingsChooser$IccLockPreference;->mSlotId:I

    .line 250
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "sim"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/meizu/settings/icclock/FlymeIcclockSettingsChooser$IccLockPreference;->mSlotId:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    const p1, 0xa0d002e

    .line 251
    invoke-virtual {p0, p1}, Landroid/preference/Preference;->setWidgetLayoutResource(I)V

    .line 252
    invoke-virtual {p0}, Lcom/meizu/settings/icclock/FlymeIcclockSettingsChooser$IccLockPreference;->update()V

    return-void
.end method

.method static synthetic access$100(Lcom/meizu/settings/icclock/FlymeIcclockSettingsChooser$IccLockPreference;)I
    .registers 1

    .line 242
    iget p0, p0, Lcom/meizu/settings/icclock/FlymeIcclockSettingsChooser$IccLockPreference;->mSlotId:I

    return p0
.end method

.method static synthetic access$200(Lcom/meizu/settings/icclock/FlymeIcclockSettingsChooser$IccLockPreference;)Landroid/telephony/SubscriptionInfo;
    .registers 1

    .line 242
    iget-object p0, p0, Lcom/meizu/settings/icclock/FlymeIcclockSettingsChooser$IccLockPreference;->mSubInfoRecord:Landroid/telephony/SubscriptionInfo;

    return-object p0
.end method


# virtual methods
.method public update()V
    .registers 2

    .line 256
    iget-object v0, p0, Lcom/meizu/settings/icclock/FlymeIcclockSettingsChooser$IccLockPreference;->mSubInfoRecord:Landroid/telephony/SubscriptionInfo;

    if-eqz v0, :cond_b

    .line 257
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    :cond_b
    return-void
.end method
