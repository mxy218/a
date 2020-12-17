.class public final synthetic Lcom/android/settings/notification/-$$Lambda$NotificationSettingsBase$krsRZLoKmsJKNXanTlSV0s9r-5U;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private final synthetic f$0:Lcom/android/settings/notification/NotificationSettingsBase;

.field private final synthetic f$1:Landroid/app/NotificationChannel;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/notification/NotificationSettingsBase;Landroid/app/NotificationChannel;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/notification/-$$Lambda$NotificationSettingsBase$krsRZLoKmsJKNXanTlSV0s9r-5U;->f$0:Lcom/android/settings/notification/NotificationSettingsBase;

    iput-object p2, p0, Lcom/android/settings/notification/-$$Lambda$NotificationSettingsBase$krsRZLoKmsJKNXanTlSV0s9r-5U;->f$1:Landroid/app/NotificationChannel;

    return-void
.end method


# virtual methods
.method public final onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .registers 4

    iget-object v0, p0, Lcom/android/settings/notification/-$$Lambda$NotificationSettingsBase$krsRZLoKmsJKNXanTlSV0s9r-5U;->f$0:Lcom/android/settings/notification/NotificationSettingsBase;

    iget-object p0, p0, Lcom/android/settings/notification/-$$Lambda$NotificationSettingsBase$krsRZLoKmsJKNXanTlSV0s9r-5U;->f$1:Landroid/app/NotificationChannel;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/settings/notification/NotificationSettingsBase;->lambda$populateSingleChannelPrefs$0$NotificationSettingsBase(Landroid/app/NotificationChannel;Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
