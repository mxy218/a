.class Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
.super Ljava/lang/Object;
.source "DevicePolicyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/devicepolicy/DevicePolicyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ActiveAdmin"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin$TrustAgentInfo;
    }
.end annotation


# static fields
.field private static final ATTR_LAST_NETWORK_LOGGING_NOTIFICATION:Ljava/lang/String; = "last-notification"

.field private static final ATTR_NUM_NETWORK_LOGGING_NOTIFICATIONS:Ljava/lang/String; = "num-notifications"

.field private static final ATTR_VALUE:Ljava/lang/String; = "value"

.field static final DEF_KEYGUARD_FEATURES_DISABLED:I = 0x0

.field static final DEF_MAXIMUM_FAILED_PASSWORDS_FOR_WIPE:I = 0x0

.field static final DEF_MAXIMUM_NETWORK_LOGGING_NOTIFICATIONS_SHOWN:I = 0x2

.field static final DEF_MAXIMUM_TIME_TO_UNLOCK:J = 0x0L

.field static final DEF_MINIMUM_PASSWORD_LENGTH:I = 0x0

.field static final DEF_MINIMUM_PASSWORD_LETTERS:I = 0x1

.field static final DEF_MINIMUM_PASSWORD_LOWER_CASE:I = 0x0

.field static final DEF_MINIMUM_PASSWORD_NON_LETTER:I = 0x0

.field static final DEF_MINIMUM_PASSWORD_NUMERIC:I = 0x1

.field static final DEF_MINIMUM_PASSWORD_SYMBOLS:I = 0x1

.field static final DEF_MINIMUM_PASSWORD_UPPER_CASE:I = 0x0

.field static final DEF_ORGANIZATION_COLOR:I

.field static final DEF_PASSWORD_EXPIRATION_DATE:J = 0x0L

.field static final DEF_PASSWORD_EXPIRATION_TIMEOUT:J = 0x0L

.field static final DEF_PASSWORD_HISTORY_LENGTH:I = 0x0

.field private static final TAG_ACCOUNT_TYPE:Ljava/lang/String; = "account-type"

.field private static final TAG_CROSS_PROFILE_CALENDAR_PACKAGES:Ljava/lang/String; = "cross-profile-calendar-packages"

.field private static final TAG_CROSS_PROFILE_CALENDAR_PACKAGES_NULL:Ljava/lang/String; = "cross-profile-calendar-packages-null"

.field private static final TAG_CROSS_PROFILE_WIDGET_PROVIDERS:Ljava/lang/String; = "cross-profile-widget-providers"

.field private static final TAG_DEFAULT_ENABLED_USER_RESTRICTIONS:Ljava/lang/String; = "default-enabled-user-restrictions"

.field private static final TAG_DISABLE_ACCOUNT_MANAGEMENT:Ljava/lang/String; = "disable-account-management"

.field private static final TAG_DISABLE_BLUETOOTH_CONTACT_SHARING:Ljava/lang/String; = "disable-bt-contacts-sharing"

.field private static final TAG_DISABLE_CALLER_ID:Ljava/lang/String; = "disable-caller-id"

.field private static final TAG_DISABLE_CAMERA:Ljava/lang/String; = "disable-camera"

.field private static final TAG_DISABLE_CONTACTS_SEARCH:Ljava/lang/String; = "disable-contacts-search"

.field private static final TAG_DISABLE_KEYGUARD_FEATURES:Ljava/lang/String; = "disable-keyguard-features"

.field private static final TAG_DISABLE_SCREEN_CAPTURE:Ljava/lang/String; = "disable-screen-capture"

.field private static final TAG_ENCRYPTION_REQUESTED:Ljava/lang/String; = "encryption-requested"

.field private static final TAG_END_USER_SESSION_MESSAGE:Ljava/lang/String; = "end_user_session_message"

.field private static final TAG_FORCE_EPHEMERAL_USERS:Ljava/lang/String; = "force_ephemeral_users"

.field private static final TAG_GLOBAL_PROXY_EXCLUSION_LIST:Ljava/lang/String; = "global-proxy-exclusion-list"

.field private static final TAG_GLOBAL_PROXY_SPEC:Ljava/lang/String; = "global-proxy-spec"

.field private static final TAG_IS_LOGOUT_ENABLED:Ljava/lang/String; = "is_logout_enabled"

.field private static final TAG_IS_NETWORK_LOGGING_ENABLED:Ljava/lang/String; = "is_network_logging_enabled"

.field private static final TAG_KEEP_UNINSTALLED_PACKAGES:Ljava/lang/String; = "keep-uninstalled-packages"

.field private static final TAG_LONG_SUPPORT_MESSAGE:Ljava/lang/String; = "long-support-message"

.field private static final TAG_MANAGE_TRUST_AGENT_FEATURES:Ljava/lang/String; = "manage-trust-agent-features"

.field private static final TAG_MAX_FAILED_PASSWORD_WIPE:Ljava/lang/String; = "max-failed-password-wipe"

.field private static final TAG_MAX_TIME_TO_UNLOCK:Ljava/lang/String; = "max-time-to-unlock"

.field private static final TAG_METERED_DATA_DISABLED_PACKAGES:Ljava/lang/String; = "metered_data_disabled_packages"

.field private static final TAG_MIN_PASSWORD_LENGTH:Ljava/lang/String; = "min-password-length"

.field private static final TAG_MIN_PASSWORD_LETTERS:Ljava/lang/String; = "min-password-letters"

.field private static final TAG_MIN_PASSWORD_LOWERCASE:Ljava/lang/String; = "min-password-lowercase"

.field private static final TAG_MIN_PASSWORD_NONLETTER:Ljava/lang/String; = "min-password-nonletter"

.field private static final TAG_MIN_PASSWORD_NUMERIC:Ljava/lang/String; = "min-password-numeric"

.field private static final TAG_MIN_PASSWORD_SYMBOLS:Ljava/lang/String; = "min-password-symbols"

.field private static final TAG_MIN_PASSWORD_UPPERCASE:Ljava/lang/String; = "min-password-uppercase"

.field private static final TAG_ORGANIZATION_COLOR:Ljava/lang/String; = "organization-color"

.field private static final TAG_ORGANIZATION_NAME:Ljava/lang/String; = "organization-name"

.field private static final TAG_PACKAGE_LIST_ITEM:Ljava/lang/String; = "item"

.field private static final TAG_PARENT_ADMIN:Ljava/lang/String; = "parent-admin"

.field private static final TAG_PASSWORD_EXPIRATION_DATE:Ljava/lang/String; = "password-expiration-date"

.field private static final TAG_PASSWORD_EXPIRATION_TIMEOUT:Ljava/lang/String; = "password-expiration-timeout"

.field private static final TAG_PASSWORD_HISTORY_LENGTH:Ljava/lang/String; = "password-history-length"

.field private static final TAG_PASSWORD_QUALITY:Ljava/lang/String; = "password-quality"

.field private static final TAG_PERMITTED_ACCESSIBILITY_SERVICES:Ljava/lang/String; = "permitted-accessiblity-services"

.field private static final TAG_PERMITTED_IMES:Ljava/lang/String; = "permitted-imes"

.field private static final TAG_PERMITTED_NOTIFICATION_LISTENERS:Ljava/lang/String; = "permitted-notification-listeners"

.field private static final TAG_POLICIES:Ljava/lang/String; = "policies"

.field private static final TAG_PROVIDER:Ljava/lang/String; = "provider"

.field private static final TAG_REQUIRE_AUTO_TIME:Ljava/lang/String; = "require_auto_time"

.field private static final TAG_RESTRICTION:Ljava/lang/String; = "restriction"

.field private static final TAG_SHORT_SUPPORT_MESSAGE:Ljava/lang/String; = "short-support-message"

.field private static final TAG_SPECIFIES_GLOBAL_PROXY:Ljava/lang/String; = "specifies-global-proxy"

.field private static final TAG_START_USER_SESSION_MESSAGE:Ljava/lang/String; = "start_user_session_message"

.field private static final TAG_STRONG_AUTH_UNLOCK_TIMEOUT:Ljava/lang/String; = "strong-auth-unlock-timeout"

.field private static final TAG_TEST_ONLY_ADMIN:Ljava/lang/String; = "test-only-admin"

.field private static final TAG_TRUST_AGENT_COMPONENT:Ljava/lang/String; = "component"

.field private static final TAG_TRUST_AGENT_COMPONENT_OPTIONS:Ljava/lang/String; = "trust-agent-component-options"

.field private static final TAG_USER_RESTRICTIONS:Ljava/lang/String; = "user-restrictions"


# instance fields
.field final accountTypesWithManagementDisabled:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field crossProfileWidgetProviders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final defaultEnabledRestrictionsAlreadySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field disableBluetoothContactSharing:Z

.field disableCallerId:Z

.field disableCamera:Z

.field disableContactsSearch:Z

.field disableScreenCapture:Z

.field disabledKeyguardFeatures:I

.field encryptionRequested:Z

.field endUserSessionMessage:Ljava/lang/String;

.field forceEphemeralUsers:Z

.field globalProxyExclusionList:Ljava/lang/String;

.field globalProxySpec:Ljava/lang/String;

.field info:Landroid/app/admin/DeviceAdminInfo;

.field isLogoutEnabled:Z

.field isNetworkLoggingEnabled:Z

.field final isParent:Z

.field keepUninstalledPackages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field lastNetworkLoggingNotificationTimeMs:J

.field longSupportMessage:Ljava/lang/CharSequence;

.field mCrossProfileCalendarPackages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field maximumFailedPasswordsForWipe:I

.field maximumTimeToUnlock:J

.field meteredDisabledPackages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field minimumPasswordMetrics:Landroid/app/admin/PasswordMetrics;

.field numNetworkLoggingNotifications:I

.field organizationColor:I

.field organizationName:Ljava/lang/String;

.field parentAdmin:Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

.field passwordExpirationDate:J

.field passwordExpirationTimeout:J

.field passwordHistoryLength:I

.field permittedAccessiblityServices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field permittedInputMethods:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field permittedNotificationListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field requireAutoTime:Z

.field shortSupportMessage:Ljava/lang/CharSequence;

.field specifiesGlobalProxy:Z

.field startUserSessionMessage:Ljava/lang/String;

.field strongAuthUnlockTimeout:J

.field testOnlyAdmin:Z

.field trustAgentInfos:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin$TrustAgentInfo;",
            ">;"
        }
    .end annotation
.end field

.field userRestrictions:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1068
    const-string v0, "#00796B"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->DEF_ORGANIZATION_COLOR:I

    return-void
.end method

.method constructor <init>(Landroid/app/admin/DeviceAdminInfo;Z)V
    .registers 14

    .line 1083
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 963
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->passwordHistoryLength:I

    .line 972
    new-instance v10, Landroid/app/admin/PasswordMetrics;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v1, v10

    invoke-direct/range {v1 .. v9}, Landroid/app/admin/PasswordMetrics;-><init>(IIIIIIII)V

    iput-object v10, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordMetrics:Landroid/app/admin/PasswordMetrics;

    .line 980
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->maximumTimeToUnlock:J

    .line 982
    iput-wide v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->strongAuthUnlockTimeout:J

    .line 985
    iput v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->maximumFailedPasswordsForWipe:I

    .line 988
    iput-wide v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationTimeout:J

    .line 991
    iput-wide v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationDate:J

    .line 995
    iput v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disabledKeyguardFeatures:I

    .line 997
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->encryptionRequested:Z

    .line 998
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->testOnlyAdmin:Z

    .line 999
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disableCamera:Z

    .line 1000
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disableCallerId:Z

    .line 1001
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disableContactsSearch:Z

    .line 1002
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disableBluetoothContactSharing:Z

    .line 1003
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disableScreenCapture:Z

    .line 1004
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->requireAutoTime:Z

    .line 1005
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->forceEphemeralUsers:Z

    .line 1006
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->isNetworkLoggingEnabled:Z

    .line 1007
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->isLogoutEnabled:Z

    .line 1011
    iput v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->numNetworkLoggingNotifications:I

    .line 1012
    iput-wide v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->lastNetworkLoggingNotificationTimeMs:J

    .line 1027
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->accountTypesWithManagementDisabled:Ljava/util/Set;

    .line 1048
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->specifiesGlobalProxy:Z

    .line 1049
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->globalProxySpec:Ljava/lang/String;

    .line 1050
    iput-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->globalProxyExclusionList:Ljava/lang/String;

    .line 1052
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->trustAgentInfos:Landroid/util/ArrayMap;

    .line 1061
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->defaultEnabledRestrictionsAlreadySet:Ljava/util/Set;

    .line 1064
    iput-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->shortSupportMessage:Ljava/lang/CharSequence;

    .line 1065
    iput-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->longSupportMessage:Ljava/lang/CharSequence;

    .line 1069
    sget v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->DEF_ORGANIZATION_COLOR:I

    iput v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->organizationColor:I

    .line 1072
    iput-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->organizationName:Ljava/lang/String;

    .line 1075
    iput-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->startUserSessionMessage:Ljava/lang/String;

    .line 1076
    iput-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->endUserSessionMessage:Ljava/lang/String;

    .line 1081
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->mCrossProfileCalendarPackages:Ljava/util/List;

    .line 1084
    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    .line 1085
    iput-boolean p2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->isParent:Z

    .line 1086
    return-void
.end method

.method private getAllTrustAgentInfos(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Landroid/util/ArrayMap;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin$TrustAgentInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1611
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 1613
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 1614
    :cond_9
    :goto_9
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_5a

    const/4 v3, 0x3

    if-ne v2, v3, :cond_19

    .line 1615
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    if-le v4, v0, :cond_5a

    .line 1616
    :cond_19
    if-eq v2, v3, :cond_9

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1f

    .line 1617
    goto :goto_9

    .line 1619
    :cond_1f
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 1620
    const-string v3, "component"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3b

    .line 1621
    const/4 v2, 0x0

    const-string/jumbo v3, "value"

    invoke-interface {p1, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1622
    invoke-direct {p0, p1, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->getTrustAgentInfo(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin$TrustAgentInfo;

    move-result-object v3

    .line 1623
    invoke-virtual {v1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1624
    goto :goto_59

    .line 1625
    :cond_3b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown tag under "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DevicePolicyManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1627
    :goto_59
    goto :goto_9

    .line 1628
    :cond_5a
    return-object v1
.end method

.method private getTrustAgentInfo(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin$TrustAgentInfo;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1633
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 1635
    new-instance v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin$TrustAgentInfo;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin$TrustAgentInfo;-><init>(Landroid/os/PersistableBundle;)V

    .line 1636
    :cond_a
    :goto_a
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_53

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1a

    .line 1637
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    if-le v4, v0, :cond_53

    .line 1638
    :cond_1a
    if-eq v2, v3, :cond_a

    const/4 v3, 0x4

    if-ne v2, v3, :cond_20

    .line 1639
    goto :goto_a

    .line 1641
    :cond_20
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 1642
    const-string/jumbo v3, "trust-agent-component-options"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_34

    .line 1643
    invoke-static {p1}, Landroid/os/PersistableBundle;->restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/os/PersistableBundle;

    move-result-object v2

    iput-object v2, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin$TrustAgentInfo;->options:Landroid/os/PersistableBundle;

    goto :goto_52

    .line 1645
    :cond_34
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown tag under "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DevicePolicyManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1647
    :goto_52
    goto :goto_a

    .line 1648
    :cond_53
    return-object v1
.end method

.method private readAttributeValues(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/util/Collection;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1592
    invoke-interface {p3}, Ljava/util/Collection;->clear()V

    .line 1593
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 1595
    :cond_7
    :goto_7
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_52

    const/4 v2, 0x3

    if-ne v1, v2, :cond_17

    .line 1596
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v0, :cond_52

    .line 1597
    :cond_17
    if-eq v1, v2, :cond_7

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1d

    .line 1598
    goto :goto_7

    .line 1600
    :cond_1d
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1601
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_33

    .line 1602
    const/4 v1, 0x0

    const-string/jumbo v2, "value"

    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p3, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_51

    .line 1604
    :cond_33
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected tag "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " but found "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DevicePolicyManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1606
    :goto_51
    goto :goto_7

    .line 1607
    :cond_52
    return-void
.end method

.method private readPackageList(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1566
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1567
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    .line 1569
    :cond_9
    :goto_9
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_6d

    const/4 v3, 0x3

    if-ne v2, v3, :cond_19

    .line 1570
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    if-le v4, v1, :cond_6d

    .line 1571
    :cond_19
    if-eq v2, v3, :cond_9

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1f

    .line 1572
    goto :goto_9

    .line 1574
    :cond_1f
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 1575
    const-string v3, "item"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "DevicePolicyManager"

    if-eqz v3, :cond_50

    .line 1576
    const/4 v3, 0x0

    const-string/jumbo v5, "value"

    invoke-interface {p1, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1577
    if-eqz v3, :cond_3b

    .line 1578
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4f

    .line 1580
    :cond_3b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Package name missing under "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1582
    :goto_4f
    goto :goto_6c

    .line 1583
    :cond_50
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown tag under "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1585
    :goto_6c
    goto :goto_9

    .line 1586
    :cond_6d
    return-object v0
.end method


# virtual methods
.method dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 7

    .line 1670
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "uid="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->getUid()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1671
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "testOnlyAdmin="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1672
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->testOnlyAdmin:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1673
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "policies:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1674
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v0}, Landroid/app/admin/DeviceAdminInfo;->getUsedPolicies()Ljava/util/ArrayList;

    move-result-object v0

    .line 1675
    const-string v1, "  "

    if-eqz v0, :cond_4c

    .line 1676
    const/4 v2, 0x0

    :goto_32
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_4c

    .line 1677
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    iget-object v3, v3, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;->tag:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1676
    add-int/lit8 v2, v2, 0x1

    goto :goto_32

    .line 1680
    :cond_4c
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "passwordQuality=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1681
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordMetrics:Landroid/app/admin/PasswordMetrics;

    iget v0, v0, Landroid/app/admin/PasswordMetrics;->quality:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1682
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "minimumPasswordLength="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1683
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordMetrics:Landroid/app/admin/PasswordMetrics;

    iget v0, v0, Landroid/app/admin/PasswordMetrics;->length:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1684
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "passwordHistoryLength="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1685
    iget v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->passwordHistoryLength:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1686
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "minimumPasswordUpperCase="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1687
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordMetrics:Landroid/app/admin/PasswordMetrics;

    iget v0, v0, Landroid/app/admin/PasswordMetrics;->upperCase:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1688
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "minimumPasswordLowerCase="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1689
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordMetrics:Landroid/app/admin/PasswordMetrics;

    iget v0, v0, Landroid/app/admin/PasswordMetrics;->lowerCase:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1690
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "minimumPasswordLetters="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1691
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordMetrics:Landroid/app/admin/PasswordMetrics;

    iget v0, v0, Landroid/app/admin/PasswordMetrics;->letters:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1692
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "minimumPasswordNumeric="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1693
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordMetrics:Landroid/app/admin/PasswordMetrics;

    iget v0, v0, Landroid/app/admin/PasswordMetrics;->numeric:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1694
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "minimumPasswordSymbols="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1695
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordMetrics:Landroid/app/admin/PasswordMetrics;

    iget v0, v0, Landroid/app/admin/PasswordMetrics;->symbols:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1696
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "minimumPasswordNonLetter="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1697
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordMetrics:Landroid/app/admin/PasswordMetrics;

    iget v0, v0, Landroid/app/admin/PasswordMetrics;->nonLetter:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1698
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "maximumTimeToUnlock="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1699
    iget-wide v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->maximumTimeToUnlock:J

    invoke-virtual {p2, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    .line 1700
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "strongAuthUnlockTimeout="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1701
    iget-wide v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->strongAuthUnlockTimeout:J

    invoke-virtual {p2, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    .line 1702
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "maximumFailedPasswordsForWipe="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1703
    iget v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->maximumFailedPasswordsForWipe:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1704
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "specifiesGlobalProxy="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1705
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->specifiesGlobalProxy:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1706
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "passwordExpirationTimeout="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1707
    iget-wide v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationTimeout:J

    invoke-virtual {p2, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    .line 1708
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "passwordExpirationDate="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1709
    iget-wide v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationDate:J

    invoke-virtual {p2, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    .line 1710
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->globalProxySpec:Ljava/lang/String;

    if-eqz v0, :cond_13a

    .line 1711
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "globalProxySpec="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1712
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->globalProxySpec:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1714
    :cond_13a
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->globalProxyExclusionList:Ljava/lang/String;

    if-eqz v0, :cond_14b

    .line 1715
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "globalProxyEclusionList="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1716
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->globalProxyExclusionList:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1718
    :cond_14b
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "encryptionRequested="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1719
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->encryptionRequested:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1720
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "disableCamera="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1721
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disableCamera:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1722
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "disableCallerId="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1723
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disableCallerId:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1724
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "disableContactsSearch="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1725
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disableContactsSearch:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1726
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "disableBluetoothContactSharing="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1727
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disableBluetoothContactSharing:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1728
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "disableScreenCapture="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1729
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disableScreenCapture:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1730
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "requireAutoTime="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1731
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->requireAutoTime:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1732
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "forceEphemeralUsers="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1733
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->forceEphemeralUsers:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1734
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "isNetworkLoggingEnabled="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1735
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->isNetworkLoggingEnabled:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1736
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "disabledKeyguardFeatures="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1737
    iget v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disabledKeyguardFeatures:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1738
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "crossProfileWidgetProviders="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1739
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->crossProfileWidgetProviders:Ljava/util/List;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1740
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->permittedAccessiblityServices:Ljava/util/List;

    if-eqz v0, :cond_1ed

    .line 1741
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "permittedAccessibilityServices="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1742
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->permittedAccessiblityServices:Ljava/util/List;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1744
    :cond_1ed
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->permittedInputMethods:Ljava/util/List;

    if-eqz v0, :cond_1ff

    .line 1745
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "permittedInputMethods="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1746
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->permittedInputMethods:Ljava/util/List;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1748
    :cond_1ff
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->permittedNotificationListeners:Ljava/util/List;

    if-eqz v0, :cond_211

    .line 1749
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "permittedNotificationListeners="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1750
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->permittedNotificationListeners:Ljava/util/List;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1752
    :cond_211
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->keepUninstalledPackages:Ljava/util/List;

    if-eqz v0, :cond_222

    .line 1753
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "keepUninstalledPackages="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1754
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->keepUninstalledPackages:Ljava/util/List;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1756
    :cond_222
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "organizationColor="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1757
    iget v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->organizationColor:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1758
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->organizationName:Ljava/lang/String;

    if-eqz v0, :cond_242

    .line 1759
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "organizationName="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1760
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->organizationName:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1762
    :cond_242
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "userRestrictions:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1763
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->userRestrictions:Landroid/os/Bundle;

    invoke-static {p2, v0, v2}, Lcom/android/server/pm/UserRestrictionsUtils;->dumpRestrictions(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1764
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "defaultEnabledRestrictionsAlreadySet="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1765
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->defaultEnabledRestrictionsAlreadySet:Ljava/util/Set;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1766
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "isParent="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1767
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->isParent:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1768
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->parentAdmin:Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    if-eqz v0, :cond_29a

    .line 1769
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "parentAdmin:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1770
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->parentAdmin:Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 1772
    :cond_29a
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->mCrossProfileCalendarPackages:Ljava/util/List;

    if-eqz v0, :cond_2ab

    .line 1773
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p1, "mCrossProfileCalendarPackages="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1774
    iget-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->mCrossProfileCalendarPackages:Ljava/util/List;

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1776
    :cond_2ab
    return-void
.end method

.method ensureUserRestrictions()Landroid/os/Bundle;
    .registers 2

    .line 1656
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->userRestrictions:Landroid/os/Bundle;

    if-nez v0, :cond_b

    .line 1657
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->userRestrictions:Landroid/os/Bundle;

    .line 1659
    :cond_b
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->userRestrictions:Landroid/os/Bundle;

    return-object v0
.end method

.method getParentActiveAdmin()Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .registers 4

    .line 1089
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->isParent:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 1091
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->parentAdmin:Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    if-nez v0, :cond_14

    .line 1092
    new-instance v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-direct {v0, v2, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;-><init>(Landroid/app/admin/DeviceAdminInfo;Z)V

    iput-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->parentAdmin:Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 1094
    :cond_14
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->parentAdmin:Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    return-object v0
.end method

.method getUid()I
    .registers 2

    .line 1101
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v0}, Landroid/app/admin/DeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    return v0
.end method

.method public getUserHandle()Landroid/os/UserHandle;
    .registers 2

    .line 1104
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v0}, Landroid/app/admin/DeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    return-object v0
.end method

.method hasParentActiveAdmin()Z
    .registers 2

    .line 1098
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->parentAdmin:Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method hasUserRestrictions()Z
    .registers 2

    .line 1652
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->userRestrictions:Landroid/os/Bundle;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/os/Bundle;->size()I

    move-result v0

    if-lez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method readFromXml(Lorg/xmlpull/v1/XmlPullParser;Z)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1384
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 1386
    :cond_4
    :goto_4
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_466

    const/4 v3, 0x3

    if-ne v1, v3, :cond_14

    .line 1387
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    if-le v4, v0, :cond_466

    .line 1388
    :cond_14
    if-eq v1, v3, :cond_4

    const/4 v3, 0x4

    if-ne v1, v3, :cond_1a

    .line 1389
    goto :goto_4

    .line 1391
    :cond_1a
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1392
    const-string/jumbo v4, "policies"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v5, "DevicePolicyManager"

    if-eqz v4, :cond_37

    .line 1393
    if-eqz p2, :cond_464

    .line 1394
    const-string v1, "Overriding device admin policies from XML."

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1395
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v1, p1}, Landroid/app/admin/DeviceAdminInfo;->readPoliciesFromXml(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_464

    .line 1397
    :cond_37
    const-string/jumbo v4, "password-quality"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string/jumbo v6, "value"

    const/4 v7, 0x0

    if-eqz v4, :cond_52

    .line 1398
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordMetrics:Landroid/app/admin/PasswordMetrics;

    .line 1399
    invoke-interface {p1, v7, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1398
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Landroid/app/admin/PasswordMetrics;->quality:I

    goto/16 :goto_464

    .line 1400
    :cond_52
    const-string v4, "min-password-length"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_68

    .line 1401
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordMetrics:Landroid/app/admin/PasswordMetrics;

    .line 1402
    invoke-interface {p1, v7, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1401
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Landroid/app/admin/PasswordMetrics;->length:I

    goto/16 :goto_464

    .line 1403
    :cond_68
    const-string/jumbo v4, "password-history-length"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7e

    .line 1404
    nop

    .line 1405
    invoke-interface {p1, v7, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1404
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->passwordHistoryLength:I

    goto/16 :goto_464

    .line 1406
    :cond_7e
    const-string v4, "min-password-uppercase"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_94

    .line 1407
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordMetrics:Landroid/app/admin/PasswordMetrics;

    .line 1408
    invoke-interface {p1, v7, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1407
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Landroid/app/admin/PasswordMetrics;->upperCase:I

    goto/16 :goto_464

    .line 1409
    :cond_94
    const-string v4, "min-password-lowercase"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_aa

    .line 1410
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordMetrics:Landroid/app/admin/PasswordMetrics;

    .line 1411
    invoke-interface {p1, v7, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1410
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Landroid/app/admin/PasswordMetrics;->lowerCase:I

    goto/16 :goto_464

    .line 1412
    :cond_aa
    const-string v4, "min-password-letters"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c0

    .line 1413
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordMetrics:Landroid/app/admin/PasswordMetrics;

    .line 1414
    invoke-interface {p1, v7, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1413
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Landroid/app/admin/PasswordMetrics;->letters:I

    goto/16 :goto_464

    .line 1415
    :cond_c0
    const-string v4, "min-password-numeric"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d6

    .line 1416
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordMetrics:Landroid/app/admin/PasswordMetrics;

    .line 1417
    invoke-interface {p1, v7, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1416
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Landroid/app/admin/PasswordMetrics;->numeric:I

    goto/16 :goto_464

    .line 1418
    :cond_d6
    const-string v4, "min-password-symbols"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_ec

    .line 1419
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordMetrics:Landroid/app/admin/PasswordMetrics;

    .line 1420
    invoke-interface {p1, v7, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1419
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Landroid/app/admin/PasswordMetrics;->symbols:I

    goto/16 :goto_464

    .line 1421
    :cond_ec
    const-string v4, "min-password-nonletter"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_102

    .line 1422
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordMetrics:Landroid/app/admin/PasswordMetrics;

    .line 1423
    invoke-interface {p1, v7, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1422
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Landroid/app/admin/PasswordMetrics;->nonLetter:I

    goto/16 :goto_464

    .line 1424
    :cond_102
    const-string v4, "max-time-to-unlock"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_117

    .line 1425
    nop

    .line 1426
    invoke-interface {p1, v7, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1425
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->maximumTimeToUnlock:J

    goto/16 :goto_464

    .line 1427
    :cond_117
    const-string/jumbo v4, "strong-auth-unlock-timeout"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12d

    .line 1428
    nop

    .line 1429
    invoke-interface {p1, v7, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1428
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->strongAuthUnlockTimeout:J

    goto/16 :goto_464

    .line 1430
    :cond_12d
    const-string v4, "max-failed-password-wipe"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_142

    .line 1431
    nop

    .line 1432
    invoke-interface {p1, v7, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1431
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->maximumFailedPasswordsForWipe:I

    goto/16 :goto_464

    .line 1433
    :cond_142
    const-string/jumbo v4, "specifies-global-proxy"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_158

    .line 1434
    nop

    .line 1435
    invoke-interface {p1, v7, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1434
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->specifiesGlobalProxy:Z

    goto/16 :goto_464

    .line 1436
    :cond_158
    const-string v4, "global-proxy-spec"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_169

    .line 1437
    nop

    .line 1438
    invoke-interface {p1, v7, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->globalProxySpec:Ljava/lang/String;

    goto/16 :goto_464

    .line 1439
    :cond_169
    const-string v4, "global-proxy-exclusion-list"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_17a

    .line 1440
    nop

    .line 1441
    invoke-interface {p1, v7, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->globalProxyExclusionList:Ljava/lang/String;

    goto/16 :goto_464

    .line 1442
    :cond_17a
    const-string/jumbo v4, "password-expiration-timeout"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_190

    .line 1443
    nop

    .line 1444
    invoke-interface {p1, v7, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1443
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationTimeout:J

    goto/16 :goto_464

    .line 1445
    :cond_190
    const-string/jumbo v4, "password-expiration-date"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1a6

    .line 1446
    nop

    .line 1447
    invoke-interface {p1, v7, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1446
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationDate:J

    goto/16 :goto_464

    .line 1448
    :cond_1a6
    const-string v4, "encryption-requested"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1bb

    .line 1449
    nop

    .line 1450
    invoke-interface {p1, v7, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1449
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->encryptionRequested:Z

    goto/16 :goto_464

    .line 1451
    :cond_1bb
    const-string/jumbo v4, "test-only-admin"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1d1

    .line 1452
    nop

    .line 1453
    invoke-interface {p1, v7, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1452
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->testOnlyAdmin:Z

    goto/16 :goto_464

    .line 1454
    :cond_1d1
    const-string v4, "disable-camera"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1e6

    .line 1455
    nop

    .line 1456
    invoke-interface {p1, v7, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1455
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disableCamera:Z

    goto/16 :goto_464

    .line 1457
    :cond_1e6
    const-string v4, "disable-caller-id"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1fb

    .line 1458
    nop

    .line 1459
    invoke-interface {p1, v7, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1458
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disableCallerId:Z

    goto/16 :goto_464

    .line 1460
    :cond_1fb
    const-string v4, "disable-contacts-search"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_210

    .line 1461
    nop

    .line 1462
    invoke-interface {p1, v7, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1461
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disableContactsSearch:Z

    goto/16 :goto_464

    .line 1463
    :cond_210
    const-string v4, "disable-bt-contacts-sharing"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_225

    .line 1464
    nop

    .line 1465
    invoke-interface {p1, v7, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1464
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disableBluetoothContactSharing:Z

    goto/16 :goto_464

    .line 1466
    :cond_225
    const-string v4, "disable-screen-capture"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_23a

    .line 1467
    nop

    .line 1468
    invoke-interface {p1, v7, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1467
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disableScreenCapture:Z

    goto/16 :goto_464

    .line 1469
    :cond_23a
    const-string/jumbo v4, "require_auto_time"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_250

    .line 1470
    nop

    .line 1471
    invoke-interface {p1, v7, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1470
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->requireAutoTime:Z

    goto/16 :goto_464

    .line 1472
    :cond_250
    const-string v4, "force_ephemeral_users"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_265

    .line 1473
    nop

    .line 1474
    invoke-interface {p1, v7, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1473
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->forceEphemeralUsers:Z

    goto/16 :goto_464

    .line 1475
    :cond_265
    const-string v4, "is_network_logging_enabled"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_295

    .line 1476
    nop

    .line 1477
    invoke-interface {p1, v7, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1476
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->isNetworkLoggingEnabled:Z

    .line 1478
    nop

    .line 1479
    const-string v1, "last-notification"

    invoke-interface {p1, v7, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1478
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->lastNetworkLoggingNotificationTimeMs:J

    .line 1480
    nop

    .line 1481
    const-string/jumbo v1, "num-notifications"

    invoke-interface {p1, v7, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1480
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->numNetworkLoggingNotifications:I

    goto/16 :goto_464

    .line 1482
    :cond_295
    const-string v4, "disable-keyguard-features"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2aa

    .line 1483
    nop

    .line 1484
    invoke-interface {p1, v7, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1483
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disabledKeyguardFeatures:I

    goto/16 :goto_464

    .line 1485
    :cond_2aa
    const-string v4, "disable-account-management"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2bb

    .line 1486
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->accountTypesWithManagementDisabled:Ljava/util/Set;

    const-string v2, "account-type"

    invoke-direct {p0, p1, v2, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->readAttributeValues(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/util/Collection;)V

    goto/16 :goto_464

    .line 1488
    :cond_2bb
    const-string v4, "manage-trust-agent-features"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2cb

    .line 1489
    invoke-direct {p0, p1, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->getAllTrustAgentInfos(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Landroid/util/ArrayMap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->trustAgentInfos:Landroid/util/ArrayMap;

    goto/16 :goto_464

    .line 1490
    :cond_2cb
    const-string v4, "cross-profile-widget-providers"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2e4

    .line 1491
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->crossProfileWidgetProviders:Ljava/util/List;

    .line 1492
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->crossProfileWidgetProviders:Ljava/util/List;

    const-string/jumbo v2, "provider"

    invoke-direct {p0, p1, v2, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->readAttributeValues(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/util/Collection;)V

    goto/16 :goto_464

    .line 1493
    :cond_2e4
    const-string/jumbo v4, "permitted-accessiblity-services"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2f5

    .line 1494
    invoke-direct {p0, p1, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->readPackageList(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->permittedAccessiblityServices:Ljava/util/List;

    goto/16 :goto_464

    .line 1495
    :cond_2f5
    const-string/jumbo v4, "permitted-imes"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_306

    .line 1496
    invoke-direct {p0, p1, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->readPackageList(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->permittedInputMethods:Ljava/util/List;

    goto/16 :goto_464

    .line 1497
    :cond_306
    const-string/jumbo v4, "permitted-notification-listeners"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_317

    .line 1498
    invoke-direct {p0, p1, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->readPackageList(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->permittedNotificationListeners:Ljava/util/List;

    goto/16 :goto_464

    .line 1499
    :cond_317
    const-string v4, "keep-uninstalled-packages"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_327

    .line 1500
    invoke-direct {p0, p1, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->readPackageList(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->keepUninstalledPackages:Ljava/util/List;

    goto/16 :goto_464

    .line 1501
    :cond_327
    const-string v4, "metered_data_disabled_packages"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_337

    .line 1502
    invoke-direct {p0, p1, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->readPackageList(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->meteredDisabledPackages:Ljava/util/List;

    goto/16 :goto_464

    .line 1503
    :cond_337
    const-string/jumbo v4, "user-restrictions"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_348

    .line 1504
    invoke-static {p1}, Lcom/android/server/pm/UserRestrictionsUtils;->readRestrictions(Lorg/xmlpull/v1/XmlPullParser;)Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->userRestrictions:Landroid/os/Bundle;

    goto/16 :goto_464

    .line 1505
    :cond_348
    const-string v4, "default-enabled-user-restrictions"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_35a

    .line 1506
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->defaultEnabledRestrictionsAlreadySet:Ljava/util/Set;

    const-string/jumbo v2, "restriction"

    invoke-direct {p0, p1, v2, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->readAttributeValues(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/util/Collection;)V

    goto/16 :goto_464

    .line 1508
    :cond_35a
    const-string/jumbo v4, "short-support-message"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_378

    .line 1509
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 1510
    if-ne v1, v3, :cond_371

    .line 1511
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->shortSupportMessage:Ljava/lang/CharSequence;

    goto/16 :goto_464

    .line 1513
    :cond_371
    const-string v1, "Missing text when loading short support message"

    invoke-static {v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_464

    .line 1515
    :cond_378
    const-string v4, "long-support-message"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_395

    .line 1516
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 1517
    if-ne v1, v3, :cond_38e

    .line 1518
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->longSupportMessage:Ljava/lang/CharSequence;

    goto/16 :goto_464

    .line 1520
    :cond_38e
    const-string v1, "Missing text when loading long support message"

    invoke-static {v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_464

    .line 1522
    :cond_395
    const-string/jumbo v4, "parent-admin"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3b4

    .line 1523
    iget-boolean v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->isParent:Z

    xor-int/2addr v1, v2

    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 1524
    new-instance v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-direct {v1, v3, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;-><init>(Landroid/app/admin/DeviceAdminInfo;Z)V

    iput-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->parentAdmin:Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 1525
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->parentAdmin:Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->readFromXml(Lorg/xmlpull/v1/XmlPullParser;Z)V

    goto/16 :goto_464

    .line 1526
    :cond_3b4
    const-string/jumbo v2, "organization-color"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3ca

    .line 1527
    nop

    .line 1528
    invoke-interface {p1, v7, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1527
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->organizationColor:I

    goto/16 :goto_464

    .line 1529
    :cond_3ca
    const-string/jumbo v2, "organization-name"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3e8

    .line 1530
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 1531
    if-ne v1, v3, :cond_3e1

    .line 1532
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->organizationName:Ljava/lang/String;

    goto/16 :goto_464

    .line 1534
    :cond_3e1
    const-string v1, "Missing text when loading organization name"

    invoke-static {v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_464

    .line 1536
    :cond_3e8
    const-string v2, "is_logout_enabled"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3fc

    .line 1537
    nop

    .line 1538
    invoke-interface {p1, v7, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1537
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->isLogoutEnabled:Z

    goto :goto_464

    .line 1539
    :cond_3fc
    const-string/jumbo v2, "start_user_session_message"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_418

    .line 1540
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 1541
    if-ne v1, v3, :cond_412

    .line 1542
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->startUserSessionMessage:Ljava/lang/String;

    goto :goto_464

    .line 1544
    :cond_412
    const-string v1, "Missing text when loading start session message"

    invoke-static {v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_464

    .line 1546
    :cond_418
    const-string v2, "end_user_session_message"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_433

    .line 1547
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 1548
    if-ne v1, v3, :cond_42d

    .line 1549
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->endUserSessionMessage:Ljava/lang/String;

    goto :goto_464

    .line 1551
    :cond_42d
    const-string v1, "Missing text when loading end session message"

    invoke-static {v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_464

    .line 1553
    :cond_433
    const-string v2, "cross-profile-calendar-packages"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_442

    .line 1554
    invoke-direct {p0, p1, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->readPackageList(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->mCrossProfileCalendarPackages:Ljava/util/List;

    goto :goto_464

    .line 1555
    :cond_442
    const-string v2, "cross-profile-calendar-packages-null"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_44d

    .line 1556
    iput-object v7, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->mCrossProfileCalendarPackages:Ljava/util/List;

    goto :goto_464

    .line 1558
    :cond_44d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown admin tag: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1559
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1561
    :cond_464
    :goto_464
    goto/16 :goto_4

    .line 1562
    :cond_466
    return-void
.end method

.method public transfer(Landroid/app/admin/DeviceAdminInfo;)V
    .registers 3

    .line 1663
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->hasParentActiveAdmin()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1664
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->parentAdmin:Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    iput-object p1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    .line 1666
    :cond_a
    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    .line 1667
    return-void
.end method

.method writeAttributeValuesToXml(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/util/Collection;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlSerializer;",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1375
    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_4
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1376
    const/4 v1, 0x0

    invoke-interface {p1, v1, p2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1377
    const-string/jumbo v2, "value"

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1378
    invoke-interface {p1, v1, p2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1379
    goto :goto_4

    .line 1380
    :cond_1e
    return-void
.end method

.method writePackageListToXml(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlSerializer;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1364
    if-nez p3, :cond_3

    .line 1365
    return-void

    .line 1368
    :cond_3
    const/4 v0, 0x0

    invoke-interface {p1, v0, p2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1369
    const-string v1, "item"

    invoke-virtual {p0, p1, v1, p3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->writeAttributeValuesToXml(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/util/Collection;)V

    .line 1370
    invoke-interface {p1, v0, p2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1371
    return-void
.end method

.method writeToXml(Lorg/xmlpull/v1/XmlSerializer;)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1109
    const-string/jumbo v0, "policies"

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1110
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v2, p1}, Landroid/app/admin/DeviceAdminInfo;->writePoliciesToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 1111
    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1112
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordMetrics:Landroid/app/admin/PasswordMetrics;

    iget v0, v0, Landroid/app/admin/PasswordMetrics;->quality:I

    const-string/jumbo v2, "value"

    if-eqz v0, :cond_fa

    .line 1113
    const-string/jumbo v0, "password-quality"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1114
    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordMetrics:Landroid/app/admin/PasswordMetrics;

    iget v3, v3, Landroid/app/admin/PasswordMetrics;->quality:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1115
    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1116
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordMetrics:Landroid/app/admin/PasswordMetrics;

    iget v0, v0, Landroid/app/admin/PasswordMetrics;->length:I

    if-eqz v0, :cond_45

    .line 1117
    const-string v0, "min-password-length"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1118
    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordMetrics:Landroid/app/admin/PasswordMetrics;

    iget v3, v3, Landroid/app/admin/PasswordMetrics;->length:I

    .line 1119
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 1118
    invoke-interface {p1, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1120
    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1122
    :cond_45
    iget v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->passwordHistoryLength:I

    if-eqz v0, :cond_5b

    .line 1123
    const-string/jumbo v0, "password-history-length"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1124
    iget v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->passwordHistoryLength:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1125
    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1127
    :cond_5b
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordMetrics:Landroid/app/admin/PasswordMetrics;

    iget v0, v0, Landroid/app/admin/PasswordMetrics;->upperCase:I

    if-eqz v0, :cond_74

    .line 1128
    const-string v0, "min-password-uppercase"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1129
    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordMetrics:Landroid/app/admin/PasswordMetrics;

    iget v3, v3, Landroid/app/admin/PasswordMetrics;->upperCase:I

    .line 1130
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 1129
    invoke-interface {p1, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1131
    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1133
    :cond_74
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordMetrics:Landroid/app/admin/PasswordMetrics;

    iget v0, v0, Landroid/app/admin/PasswordMetrics;->lowerCase:I

    if-eqz v0, :cond_8d

    .line 1134
    const-string v0, "min-password-lowercase"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1135
    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordMetrics:Landroid/app/admin/PasswordMetrics;

    iget v3, v3, Landroid/app/admin/PasswordMetrics;->lowerCase:I

    .line 1136
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 1135
    invoke-interface {p1, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1137
    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1139
    :cond_8d
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordMetrics:Landroid/app/admin/PasswordMetrics;

    iget v0, v0, Landroid/app/admin/PasswordMetrics;->letters:I

    const/4 v3, 0x1

    if-eq v0, v3, :cond_a9

    .line 1140
    const-string v0, "min-password-letters"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1141
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordMetrics:Landroid/app/admin/PasswordMetrics;

    iget v0, v0, Landroid/app/admin/PasswordMetrics;->letters:I

    .line 1142
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 1141
    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1143
    const-string v0, "min-password-letters"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1145
    :cond_a9
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordMetrics:Landroid/app/admin/PasswordMetrics;

    iget v0, v0, Landroid/app/admin/PasswordMetrics;->numeric:I

    if-eq v0, v3, :cond_c4

    .line 1146
    const-string v0, "min-password-numeric"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1147
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordMetrics:Landroid/app/admin/PasswordMetrics;

    iget v0, v0, Landroid/app/admin/PasswordMetrics;->numeric:I

    .line 1148
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 1147
    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1149
    const-string v0, "min-password-numeric"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1151
    :cond_c4
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordMetrics:Landroid/app/admin/PasswordMetrics;

    iget v0, v0, Landroid/app/admin/PasswordMetrics;->symbols:I

    if-eq v0, v3, :cond_df

    .line 1152
    const-string v0, "min-password-symbols"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1153
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordMetrics:Landroid/app/admin/PasswordMetrics;

    iget v0, v0, Landroid/app/admin/PasswordMetrics;->symbols:I

    .line 1154
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 1153
    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1155
    const-string v0, "min-password-symbols"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1157
    :cond_df
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordMetrics:Landroid/app/admin/PasswordMetrics;

    iget v0, v0, Landroid/app/admin/PasswordMetrics;->nonLetter:I

    if-lez v0, :cond_fa

    .line 1158
    const-string v0, "min-password-nonletter"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1159
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordMetrics:Landroid/app/admin/PasswordMetrics;

    iget v0, v0, Landroid/app/admin/PasswordMetrics;->nonLetter:I

    .line 1160
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 1159
    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1161
    const-string v0, "min-password-nonletter"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1164
    :cond_fa
    iget-wide v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->maximumTimeToUnlock:J

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-eqz v0, :cond_113

    .line 1165
    const-string v0, "max-time-to-unlock"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1166
    iget-wide v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->maximumTimeToUnlock:J

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1167
    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1169
    :cond_113
    iget-wide v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->strongAuthUnlockTimeout:J

    const-wide/32 v7, 0xf731400

    cmp-long v0, v3, v7

    if-eqz v0, :cond_12e

    .line 1170
    const-string/jumbo v0, "strong-auth-unlock-timeout"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1171
    iget-wide v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->strongAuthUnlockTimeout:J

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1172
    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1174
    :cond_12e
    iget v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->maximumFailedPasswordsForWipe:I

    if-eqz v0, :cond_143

    .line 1175
    const-string v0, "max-failed-password-wipe"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1176
    iget v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->maximumFailedPasswordsForWipe:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1177
    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1179
    :cond_143
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->specifiesGlobalProxy:Z

    if-eqz v0, :cond_17f

    .line 1180
    const-string/jumbo v0, "specifies-global-proxy"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1181
    iget-boolean v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->specifiesGlobalProxy:Z

    invoke-static {v3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1182
    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1183
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->globalProxySpec:Ljava/lang/String;

    if-eqz v0, :cond_16c

    .line 1184
    const-string v0, "global-proxy-spec"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1185
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->globalProxySpec:Ljava/lang/String;

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1186
    const-string v0, "global-proxy-spec"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1188
    :cond_16c
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->globalProxyExclusionList:Ljava/lang/String;

    if-eqz v0, :cond_17f

    .line 1189
    const-string v0, "global-proxy-exclusion-list"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1190
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->globalProxyExclusionList:Ljava/lang/String;

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1191
    const-string v0, "global-proxy-exclusion-list"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1194
    :cond_17f
    iget-wide v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationTimeout:J

    cmp-long v0, v3, v5

    if-eqz v0, :cond_197

    .line 1195
    const-string/jumbo v0, "password-expiration-timeout"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1196
    iget-wide v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationTimeout:J

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1197
    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1199
    :cond_197
    iget-wide v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationDate:J

    cmp-long v0, v3, v5

    if-eqz v0, :cond_1b2

    .line 1200
    const-string/jumbo v0, "password-expiration-date"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1201
    iget-wide v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationDate:J

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1202
    const-string/jumbo v0, "password-expiration-date"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1204
    :cond_1b2
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->encryptionRequested:Z

    if-eqz v0, :cond_1c9

    .line 1205
    const-string v0, "encryption-requested"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1206
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->encryptionRequested:Z

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1207
    const-string v0, "encryption-requested"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1209
    :cond_1c9
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->testOnlyAdmin:Z

    if-eqz v0, :cond_1e2

    .line 1210
    const-string/jumbo v0, "test-only-admin"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1211
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->testOnlyAdmin:Z

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1212
    const-string/jumbo v0, "test-only-admin"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1214
    :cond_1e2
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disableCamera:Z

    if-eqz v0, :cond_1f9

    .line 1215
    const-string v0, "disable-camera"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1216
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disableCamera:Z

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1217
    const-string v0, "disable-camera"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1219
    :cond_1f9
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disableCallerId:Z

    if-eqz v0, :cond_210

    .line 1220
    const-string v0, "disable-caller-id"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1221
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disableCallerId:Z

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1222
    const-string v0, "disable-caller-id"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1224
    :cond_210
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disableContactsSearch:Z

    if-eqz v0, :cond_227

    .line 1225
    const-string v0, "disable-contacts-search"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1226
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disableContactsSearch:Z

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1227
    const-string v0, "disable-contacts-search"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1229
    :cond_227
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disableBluetoothContactSharing:Z

    if-nez v0, :cond_23e

    .line 1230
    const-string v0, "disable-bt-contacts-sharing"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1231
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disableBluetoothContactSharing:Z

    .line 1232
    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    .line 1231
    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1233
    const-string v0, "disable-bt-contacts-sharing"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1235
    :cond_23e
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disableScreenCapture:Z

    if-eqz v0, :cond_255

    .line 1236
    const-string v0, "disable-screen-capture"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1237
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disableScreenCapture:Z

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1238
    const-string v0, "disable-screen-capture"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1240
    :cond_255
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->requireAutoTime:Z

    if-eqz v0, :cond_26e

    .line 1241
    const-string/jumbo v0, "require_auto_time"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1242
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->requireAutoTime:Z

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1243
    const-string/jumbo v0, "require_auto_time"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1245
    :cond_26e
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->forceEphemeralUsers:Z

    if-eqz v0, :cond_285

    .line 1246
    const-string v0, "force_ephemeral_users"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1247
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->forceEphemeralUsers:Z

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1248
    const-string v0, "force_ephemeral_users"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1250
    :cond_285
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->isNetworkLoggingEnabled:Z

    if-eqz v0, :cond_2b3

    .line 1251
    const-string v0, "is_network_logging_enabled"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1252
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->isNetworkLoggingEnabled:Z

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1253
    iget v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->numNetworkLoggingNotifications:I

    .line 1254
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 1253
    const-string/jumbo v3, "num-notifications"

    invoke-interface {p1, v1, v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1255
    iget-wide v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->lastNetworkLoggingNotificationTimeMs:J

    .line 1256
    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    .line 1255
    const-string v3, "last-notification"

    invoke-interface {p1, v1, v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1257
    const-string v0, "is_network_logging_enabled"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1259
    :cond_2b3
    iget v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disabledKeyguardFeatures:I

    if-eqz v0, :cond_2ca

    .line 1260
    const-string v0, "disable-keyguard-features"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1261
    iget v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disabledKeyguardFeatures:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1262
    const-string v0, "disable-keyguard-features"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1264
    :cond_2ca
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->accountTypesWithManagementDisabled:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2e3

    .line 1265
    const-string v0, "disable-account-management"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1266
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->accountTypesWithManagementDisabled:Ljava/util/Set;

    const-string v3, "account-type"

    invoke-virtual {p0, p1, v3, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->writeAttributeValuesToXml(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/util/Collection;)V

    .line 1268
    const-string v0, "disable-account-management"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1270
    :cond_2e3
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->trustAgentInfos:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_343

    .line 1271
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->trustAgentInfos:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 1272
    const-string v3, "manage-trust-agent-features"

    invoke-interface {p1, v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1273
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2fa
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_33e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 1274
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin$TrustAgentInfo;

    .line 1275
    const-string v5, "component"

    invoke-interface {p1, v1, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1276
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {p1, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1277
    iget-object v3, v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin$TrustAgentInfo;->options:Landroid/os/PersistableBundle;

    if-eqz v3, :cond_338

    .line 1278
    const-string/jumbo v3, "trust-agent-component-options"

    invoke-interface {p1, v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1280
    :try_start_324
    iget-object v3, v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin$TrustAgentInfo;->options:Landroid/os/PersistableBundle;

    invoke-virtual {v3, p1}, Landroid/os/PersistableBundle;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V
    :try_end_329
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_324 .. :try_end_329} :catch_32a

    .line 1283
    goto :goto_332

    .line 1281
    :catch_32a
    move-exception v3

    .line 1282
    const-string v4, "DevicePolicyManager"

    const-string v5, "Failed to save TrustAgent options"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1284
    :goto_332
    const-string/jumbo v3, "trust-agent-component-options"

    invoke-interface {p1, v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1286
    :cond_338
    const-string v3, "component"

    invoke-interface {p1, v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1287
    goto :goto_2fa

    .line 1288
    :cond_33e
    const-string v0, "manage-trust-agent-features"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1290
    :cond_343
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->crossProfileWidgetProviders:Ljava/util/List;

    if-eqz v0, :cond_35f

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_35f

    .line 1291
    const-string v0, "cross-profile-widget-providers"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1292
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->crossProfileWidgetProviders:Ljava/util/List;

    const-string/jumbo v3, "provider"

    invoke-virtual {p0, p1, v3, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->writeAttributeValuesToXml(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/util/Collection;)V

    .line 1293
    const-string v0, "cross-profile-widget-providers"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1295
    :cond_35f
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->permittedAccessiblityServices:Ljava/util/List;

    const-string/jumbo v3, "permitted-accessiblity-services"

    invoke-virtual {p0, p1, v3, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->writePackageListToXml(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/util/List;)V

    .line 1297
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->permittedInputMethods:Ljava/util/List;

    const-string/jumbo v3, "permitted-imes"

    invoke-virtual {p0, p1, v3, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->writePackageListToXml(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/util/List;)V

    .line 1298
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->permittedNotificationListeners:Ljava/util/List;

    const-string/jumbo v3, "permitted-notification-listeners"

    invoke-virtual {p0, p1, v3, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->writePackageListToXml(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/util/List;)V

    .line 1300
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->keepUninstalledPackages:Ljava/util/List;

    const-string v3, "keep-uninstalled-packages"

    invoke-virtual {p0, p1, v3, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->writePackageListToXml(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/util/List;)V

    .line 1301
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->meteredDisabledPackages:Ljava/util/List;

    const-string v3, "metered_data_disabled_packages"

    invoke-virtual {p0, p1, v3, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->writePackageListToXml(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/util/List;)V

    .line 1302
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->hasUserRestrictions()Z

    move-result v0

    if-eqz v0, :cond_393

    .line 1303
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->userRestrictions:Landroid/os/Bundle;

    const-string/jumbo v3, "user-restrictions"

    invoke-static {p1, v0, v3}, Lcom/android/server/pm/UserRestrictionsUtils;->writeRestrictions(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1306
    :cond_393
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->defaultEnabledRestrictionsAlreadySet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3ad

    .line 1307
    const-string v0, "default-enabled-user-restrictions"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1308
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->defaultEnabledRestrictionsAlreadySet:Ljava/util/Set;

    const-string/jumbo v3, "restriction"

    invoke-virtual {p0, p1, v3, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->writeAttributeValuesToXml(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/util/Collection;)V

    .line 1310
    const-string v0, "default-enabled-user-restrictions"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1312
    :cond_3ad
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->shortSupportMessage:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3ca

    .line 1313
    const-string/jumbo v0, "short-support-message"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1314
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->shortSupportMessage:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1315
    const-string/jumbo v0, "short-support-message"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1317
    :cond_3ca
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->longSupportMessage:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3e5

    .line 1318
    const-string v0, "long-support-message"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1319
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->longSupportMessage:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1320
    const-string v0, "long-support-message"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1322
    :cond_3e5
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->parentAdmin:Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    if-eqz v0, :cond_3fa

    .line 1323
    const-string/jumbo v0, "parent-admin"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1324
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->parentAdmin:Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    invoke-virtual {v0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->writeToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 1325
    const-string/jumbo v0, "parent-admin"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1327
    :cond_3fa
    iget v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->organizationColor:I

    sget v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->DEF_ORGANIZATION_COLOR:I

    if-eq v0, v3, :cond_415

    .line 1328
    const-string/jumbo v0, "organization-color"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1329
    iget v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->organizationColor:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1330
    const-string/jumbo v0, "organization-color"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1332
    :cond_415
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->organizationName:Ljava/lang/String;

    if-eqz v0, :cond_42a

    .line 1333
    const-string/jumbo v0, "organization-name"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1334
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->organizationName:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1335
    const-string/jumbo v0, "organization-name"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1337
    :cond_42a
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->isLogoutEnabled:Z

    if-eqz v0, :cond_441

    .line 1338
    const-string v0, "is_logout_enabled"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1339
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->isLogoutEnabled:Z

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1340
    const-string v0, "is_logout_enabled"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1342
    :cond_441
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->startUserSessionMessage:Ljava/lang/String;

    if-eqz v0, :cond_456

    .line 1343
    const-string/jumbo v0, "start_user_session_message"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1344
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->startUserSessionMessage:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1345
    const-string/jumbo v0, "start_user_session_message"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1347
    :cond_456
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->endUserSessionMessage:Ljava/lang/String;

    if-eqz v0, :cond_469

    .line 1348
    const-string v0, "end_user_session_message"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1349
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->endUserSessionMessage:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1350
    const-string v0, "end_user_session_message"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1352
    :cond_469
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->mCrossProfileCalendarPackages:Ljava/util/List;

    if-nez v0, :cond_478

    .line 1353
    const-string v0, "cross-profile-calendar-packages-null"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1354
    const-string v0, "cross-profile-calendar-packages-null"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_47d

    .line 1356
    :cond_478
    const-string v1, "cross-profile-calendar-packages"

    invoke-virtual {p0, p1, v1, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->writePackageListToXml(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/util/List;)V

    .line 1359
    :goto_47d
    return-void
.end method
