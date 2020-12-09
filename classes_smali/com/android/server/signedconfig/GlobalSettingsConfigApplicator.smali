.class Lcom/android/server/signedconfig/GlobalSettingsConfigApplicator;
.super Ljava/lang/Object;
.source "GlobalSettingsConfigApplicator.java"


# static fields
.field private static final ALLOWED_KEYS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final HIDDEN_API_POLICY_KEY_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final KEY_VALUE_MAPPERS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "SignedConfig"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mEvent:Lcom/android/server/signedconfig/SignedConfigEvent;

.field private final mSourcePackage:Ljava/lang/String;

.field private final mVerifier:Lcom/android/server/signedconfig/SignatureVerifier;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 38
    new-instance v0, Landroid/util/ArraySet;

    const-string v1, "hidden_api_policy"

    const-string v2, "hidden_api_blacklist_exemptions"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v2

    .line 39
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 38
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/android/server/signedconfig/GlobalSettingsConfigApplicator;->ALLOWED_KEYS:Ljava/util/Set;

    .line 44
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "DEFAULT"

    aput-object v3, v0, v2

    .line 45
    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v0, v4

    const/4 v3, 0x2

    const-string v5, "DISABLED"

    aput-object v5, v0, v3

    .line 46
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    aput-object v5, v0, v6

    const/4 v5, 0x4

    const-string v6, "JUST_WARN"

    aput-object v6, v0, v5

    .line 47
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x5

    aput-object v5, v0, v6

    const/4 v5, 0x6

    const-string v6, "ENABLED"

    aput-object v6, v0, v5

    .line 48
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x7

    aput-object v5, v0, v6

    .line 44
    invoke-static {v0}, Lcom/android/server/signedconfig/GlobalSettingsConfigApplicator;->makeMap([Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/android/server/signedconfig/GlobalSettingsConfigApplicator;->HIDDEN_API_POLICY_KEY_MAP:Ljava/util/Map;

    .line 51
    new-array v0, v3, [Ljava/lang/Object;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/signedconfig/GlobalSettingsConfigApplicator;->HIDDEN_API_POLICY_KEY_MAP:Ljava/util/Map;

    aput-object v1, v0, v4

    invoke-static {v0}, Lcom/android/server/signedconfig/GlobalSettingsConfigApplicator;->makeMap([Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/android/server/signedconfig/GlobalSettingsConfigApplicator;->KEY_VALUE_MAPPERS:Ljava/util/Map;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/server/signedconfig/SignedConfigEvent;)V
    .registers 4

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Lcom/android/server/signedconfig/GlobalSettingsConfigApplicator;->mContext:Landroid/content/Context;

    .line 75
    iput-object p2, p0, Lcom/android/server/signedconfig/GlobalSettingsConfigApplicator;->mSourcePackage:Ljava/lang/String;

    .line 76
    iput-object p3, p0, Lcom/android/server/signedconfig/GlobalSettingsConfigApplicator;->mEvent:Lcom/android/server/signedconfig/SignedConfigEvent;

    .line 77
    new-instance p1, Lcom/android/server/signedconfig/SignatureVerifier;

    iget-object p2, p0, Lcom/android/server/signedconfig/GlobalSettingsConfigApplicator;->mEvent:Lcom/android/server/signedconfig/SignedConfigEvent;

    invoke-direct {p1, p2}, Lcom/android/server/signedconfig/SignatureVerifier;-><init>(Lcom/android/server/signedconfig/SignedConfigEvent;)V

    iput-object p1, p0, Lcom/android/server/signedconfig/GlobalSettingsConfigApplicator;->mVerifier:Lcom/android/server/signedconfig/SignatureVerifier;

    .line 78
    return-void
.end method

.method private checkSignature(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    .line 82
    :try_start_0
    iget-object v0, p0, Lcom/android/server/signedconfig/GlobalSettingsConfigApplicator;->mVerifier:Lcom/android/server/signedconfig/SignatureVerifier;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/signedconfig/SignatureVerifier;->verifySignature(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1
    :try_end_6
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_6} :catch_7

    return p1

    .line 83
    :catch_7
    move-exception p1

    .line 84
    const-string p2, "SignedConfig"

    const-string v0, "Failed to verify signature"

    invoke-static {p2, v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 85
    iget-object p1, p0, Lcom/android/server/signedconfig/GlobalSettingsConfigApplicator;->mEvent:Lcom/android/server/signedconfig/SignedConfigEvent;

    const/4 p2, 0x4

    iput p2, p1, Lcom/android/server/signedconfig/SignedConfigEvent;->status:I

    .line 86
    const/4 p1, 0x0

    return p1
.end method

.method private getCurrentConfigVersion()I
    .registers 4

    .line 91
    iget-object v0, p0, Lcom/android/server/signedconfig/GlobalSettingsConfigApplicator;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "signed_config_version"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private static varargs makeMap([Ljava/lang/Object;)Ljava/util/Map;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .line 56
    array-length v0, p0

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_23

    .line 59
    array-length v0, p0

    div-int/lit8 v0, v0, 0x2

    .line 60
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1, v0}, Landroid/util/ArrayMap;-><init>(I)V

    .line 61
    const/4 v2, 0x0

    :goto_e
    if-ge v2, v0, :cond_1e

    .line 62
    mul-int/lit8 v3, v2, 0x2

    aget-object v4, p0, v3

    add-int/lit8 v3, v3, 0x1

    aget-object v3, p0, v3

    invoke-virtual {v1, v4, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 64
    :cond_1e
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    return-object p0

    .line 57
    :cond_23
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method private updateCurrentConfig(ILjava/util/Map;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 96
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_8
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 97
    iget-object v1, p0, Lcom/android/server/signedconfig/GlobalSettingsConfigApplicator;->mContext:Landroid/content/Context;

    .line 98
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 99
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 100
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 97
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 101
    goto :goto_8

    .line 102
    :cond_2a
    iget-object p2, p0, Lcom/android/server/signedconfig/GlobalSettingsConfigApplicator;->mContext:Landroid/content/Context;

    .line 103
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    .line 102
    const-string/jumbo v0, "signed_config_version"

    invoke-static {p2, v0, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 104
    return-void
.end method


# virtual methods
.method applyConfig(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 108
    invoke-direct {p0, p1, p2}, Lcom/android/server/signedconfig/GlobalSettingsConfigApplicator;->checkSignature(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    const-string v0, "SignedConfig"

    if-nez p2, :cond_24

    .line 109
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Signature check on global settings in package "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/server/signedconfig/GlobalSettingsConfigApplicator;->mSourcePackage:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " failed; ignoring"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    return-void

    .line 115
    :cond_24
    :try_start_24
    sget-object p2, Lcom/android/server/signedconfig/GlobalSettingsConfigApplicator;->ALLOWED_KEYS:Ljava/util/Set;

    sget-object v1, Lcom/android/server/signedconfig/GlobalSettingsConfigApplicator;->KEY_VALUE_MAPPERS:Ljava/util/Map;

    invoke-static {p1, p2, v1}, Lcom/android/server/signedconfig/SignedConfig;->parse(Ljava/lang/String;Ljava/util/Set;Ljava/util/Map;)Lcom/android/server/signedconfig/SignedConfig;

    move-result-object p1

    .line 116
    iget-object p2, p0, Lcom/android/server/signedconfig/GlobalSettingsConfigApplicator;->mEvent:Lcom/android/server/signedconfig/SignedConfigEvent;

    iget v1, p1, Lcom/android/server/signedconfig/SignedConfig;->version:I

    iput v1, p2, Lcom/android/server/signedconfig/SignedConfigEvent;->version:I
    :try_end_32
    .catch Lcom/android/server/signedconfig/InvalidConfigException; {:try_start_24 .. :try_end_32} :catch_c8

    .line 121
    nop

    .line 122
    invoke-direct {p0}, Lcom/android/server/signedconfig/GlobalSettingsConfigApplicator;->getCurrentConfigVersion()I

    move-result p2

    .line 123
    iget v1, p1, Lcom/android/server/signedconfig/SignedConfig;->version:I

    if-lt p2, v1, :cond_69

    .line 124
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Global settings from package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/signedconfig/GlobalSettingsConfigApplicator;->mSourcePackage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is older than existing: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/android/server/signedconfig/SignedConfig;->version:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "<="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    iget-object p1, p0, Lcom/android/server/signedconfig/GlobalSettingsConfigApplicator;->mEvent:Lcom/android/server/signedconfig/SignedConfigEvent;

    const/4 p2, 0x6

    iput p2, p1, Lcom/android/server/signedconfig/SignedConfigEvent;->status:I

    .line 127
    return-void

    .line 130
    :cond_69
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got new global settings from package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/signedconfig/GlobalSettingsConfigApplicator;->mSourcePackage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/server/signedconfig/SignedConfig;->version:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " replacing existing version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 133
    invoke-virtual {p1, p2}, Lcom/android/server/signedconfig/SignedConfig;->getMatchingConfig(I)Lcom/android/server/signedconfig/SignedConfig$PerSdkConfig;

    move-result-object p2

    .line 134
    if-nez p2, :cond_a5

    .line 135
    const-string p1, "Settings is not applicable to current SDK version; ignoring"

    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    iget-object p1, p0, Lcom/android/server/signedconfig/GlobalSettingsConfigApplicator;->mEvent:Lcom/android/server/signedconfig/SignedConfigEvent;

    const/16 p2, 0x8

    iput p2, p1, Lcom/android/server/signedconfig/SignedConfigEvent;->status:I

    .line 137
    return-void

    .line 140
    :cond_a5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Updating global settings to version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/server/signedconfig/SignedConfig;->version:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    iget p1, p1, Lcom/android/server/signedconfig/SignedConfig;->version:I

    iget-object p2, p2, Lcom/android/server/signedconfig/SignedConfig$PerSdkConfig;->values:Ljava/util/Map;

    invoke-direct {p0, p1, p2}, Lcom/android/server/signedconfig/GlobalSettingsConfigApplicator;->updateCurrentConfig(ILjava/util/Map;)V

    .line 142
    iget-object p1, p0, Lcom/android/server/signedconfig/GlobalSettingsConfigApplicator;->mEvent:Lcom/android/server/signedconfig/SignedConfigEvent;

    const/4 p2, 0x1

    iput p2, p1, Lcom/android/server/signedconfig/SignedConfigEvent;->status:I

    .line 143
    return-void

    .line 117
    :catch_c8
    move-exception p1

    .line 118
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to parse global settings from package "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/signedconfig/GlobalSettingsConfigApplicator;->mSourcePackage:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 119
    iget-object p1, p0, Lcom/android/server/signedconfig/GlobalSettingsConfigApplicator;->mEvent:Lcom/android/server/signedconfig/SignedConfigEvent;

    const/4 p2, 0x5

    iput p2, p1, Lcom/android/server/signedconfig/SignedConfigEvent;->status:I

    .line 120
    return-void
.end method
