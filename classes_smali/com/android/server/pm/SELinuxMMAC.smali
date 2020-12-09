.class public final Lcom/android/server/pm/SELinuxMMAC;
.super Ljava/lang/Object;
.source "SELinuxMMAC.java"


# static fields
.field private static final DEBUG_POLICY:Z = false

.field private static final DEBUG_POLICY_INSTALL:Z = false

.field private static final DEBUG_POLICY_ORDER:Z = false

.field private static final DEFAULT_SEINFO:Ljava/lang/String; = "default"

.field private static final PRIVILEGED_APP_STR:Ljava/lang/String; = ":privapp"

.field private static final SANDBOX_V2_STR:Ljava/lang/String; = ":v2"

.field static final TAG:Ljava/lang/String; = "SELinuxMMAC"

.field private static final TARGETSDKVERSION_STR:Ljava/lang/String; = ":targetSdkVersion="

.field private static sMacPermissions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private static sPolicies:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/pm/Policy;",
            ">;"
        }
    .end annotation
.end field

.field private static sPolicyRead:Z


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/pm/SELinuxMMAC;->sPolicies:Ljava/util/List;

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/pm/SELinuxMMAC;->sMacPermissions:Ljava/util/List;

    .line 81
    sget-object v0, Lcom/android/server/pm/SELinuxMMAC;->sMacPermissions:Ljava/util/List;

    new-instance v1, Ljava/io/File;

    .line 82
    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v2

    const-string v3, "/etc/selinux/plat_mac_permissions.xml"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 81
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    new-instance v0, Ljava/io/File;

    .line 86
    invoke-static {}, Landroid/os/Environment;->getProductDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "/etc/selinux/product_mac_permissions.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 87
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_34

    .line 88
    sget-object v1, Lcom/android/server/pm/SELinuxMMAC;->sMacPermissions:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    :cond_34
    new-instance v0, Ljava/io/File;

    .line 95
    invoke-static {}, Landroid/os/Environment;->getVendorDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "/etc/selinux/vendor_mac_permissions.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 96
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_4b

    .line 97
    sget-object v1, Lcom/android/server/pm/SELinuxMMAC;->sMacPermissions:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5b

    .line 100
    :cond_4b
    sget-object v0, Lcom/android/server/pm/SELinuxMMAC;->sMacPermissions:Ljava/util/List;

    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getVendorDirectory()Ljava/io/File;

    move-result-object v2

    const-string v3, "/etc/selinux/nonplat_mac_permissions.xml"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    :goto_5b
    new-instance v0, Ljava/io/File;

    .line 106
    invoke-static {}, Landroid/os/Environment;->getOdmDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "/etc/selinux/odm_mac_permissions.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 107
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_71

    .line 108
    sget-object v1, Lcom/android/server/pm/SELinuxMMAC;->sMacPermissions:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    :cond_71
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSeInfo(Landroid/content/pm/PackageParser$Package;ZII)Ljava/lang/String;
    .registers 8

    .line 334
    nop

    .line 335
    sget-object v0, Lcom/android/server/pm/SELinuxMMAC;->sPolicies:Ljava/util/List;

    monitor-enter v0

    .line 336
    :try_start_4
    sget-boolean v1, Lcom/android/server/pm/SELinuxMMAC;->sPolicyRead:Z

    const/4 v2, 0x0

    if-nez v1, :cond_a

    goto :goto_24

    .line 341
    :cond_a
    sget-object v1, Lcom/android/server/pm/SELinuxMMAC;->sPolicies:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/Policy;

    .line 342
    invoke-virtual {v2, p0}, Lcom/android/server/pm/Policy;->getMatchedSeInfo(Landroid/content/pm/PackageParser$Package;)Ljava/lang/String;

    move-result-object v2

    .line 343
    if-eqz v2, :cond_23

    .line 344
    goto :goto_24

    .line 346
    :cond_23
    goto :goto_10

    .line 348
    :cond_24
    :goto_24
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_4 .. :try_end_25} :catchall_65

    .line 350
    if-nez v2, :cond_29

    .line 351
    const-string v2, "default"

    .line 354
    :cond_29
    const/4 p0, 0x2

    if-ne p2, p0, :cond_3d

    .line 355
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ":v2"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 358
    :cond_3d
    if-eqz p1, :cond_50

    .line 359
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":privapp"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 362
    :cond_50
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":targetSdkVersion="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 368
    return-object p0

    .line 348
    :catchall_65
    move-exception p0

    :try_start_66
    monitor-exit v0
    :try_end_67
    .catchall {:try_start_66 .. :try_end_67} :catchall_65

    throw p0
.end method

.method private static readCert(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 291
    const/4 v0, 0x2

    const/4 v1, 0x0

    const-string v2, "cert"

    invoke-interface {p0, v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 292
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    .line 293
    return-void
.end method

.method public static readInstallPolicy()Z
    .registers 14

    .line 126
    sget-object v0, Lcom/android/server/pm/SELinuxMMAC;->sPolicies:Ljava/util/List;

    monitor-enter v0

    .line 127
    :try_start_3
    sget-boolean v1, Lcom/android/server/pm/SELinuxMMAC;->sPolicyRead:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_a

    .line 128
    monitor-exit v0

    return v2

    .line 130
    :cond_a
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_111

    .line 133
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 135
    nop

    .line 136
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    .line 138
    sget-object v3, Lcom/android/server/pm/SELinuxMMAC;->sMacPermissions:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    .line 139
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v7, v4

    move v6, v5

    :goto_1f
    if-ge v6, v3, :cond_e7

    .line 140
    sget-object v8, Lcom/android/server/pm/SELinuxMMAC;->sMacPermissions:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/io/File;

    .line 142
    :try_start_29
    new-instance v9, Ljava/io/FileReader;

    invoke-direct {v9, v8}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_2e
    .catch Ljava/lang/IllegalStateException; {:try_start_29 .. :try_end_2e} :catch_b6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_29 .. :try_end_2e} :catch_b6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_29 .. :try_end_2e} :catch_b6
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_2e} :catch_9a
    .catchall {:try_start_29 .. :try_end_2e} :catchall_98

    .line 143
    :try_start_2e
    const-string v7, "SELinuxMMAC"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Using policy file "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    invoke-interface {v1, v9}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 146
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    .line 147
    const-string/jumbo v7, "policy"

    const/4 v10, 0x2

    invoke-interface {v1, v10, v4, v7}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 149
    :goto_51
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    const/4 v11, 0x3

    if-eq v7, v11, :cond_87

    .line 150
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v7

    if-eq v7, v10, :cond_5f

    .line 151
    goto :goto_51

    .line 154
    :cond_5f
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    const/4 v11, -0x1

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v12

    const v13, -0x35ca90d6  # -2972618.5f

    if-eq v12, v13, :cond_6e

    :cond_6d
    goto :goto_78

    :cond_6e
    const-string/jumbo v12, "signer"

    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6d

    move v11, v5

    :goto_78
    if-eqz v11, :cond_7e

    .line 159
    invoke-static {v1}, Lcom/android/server/pm/SELinuxMMAC;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_86

    .line 156
    :cond_7e
    invoke-static {v1}, Lcom/android/server/pm/SELinuxMMAC;->readSignerOrThrow(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/pm/Policy;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_85
    .catch Ljava/lang/IllegalStateException; {:try_start_2e .. :try_end_85} :catch_95
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2e .. :try_end_85} :catch_95
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2e .. :try_end_85} :catch_95
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_85} :catch_92
    .catchall {:try_start_2e .. :try_end_85} :catchall_8f

    .line 157
    nop

    .line 159
    :goto_86
    goto :goto_51

    .line 176
    :cond_87
    invoke-static {v9}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 177
    nop

    .line 139
    add-int/lit8 v6, v6, 0x1

    move-object v7, v9

    goto :goto_1f

    .line 176
    :catchall_8f
    move-exception v0

    move-object v7, v9

    goto :goto_e3

    .line 172
    :catch_92
    move-exception v0

    move-object v7, v9

    goto :goto_9b

    .line 162
    :catch_95
    move-exception v0

    move-object v7, v9

    goto :goto_b7

    .line 176
    :catchall_98
    move-exception v0

    goto :goto_e3

    .line 172
    :catch_9a
    move-exception v0

    .line 173
    :goto_9b
    :try_start_9b
    const-string v1, "SELinuxMMAC"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception parsing "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b1
    .catchall {:try_start_9b .. :try_end_b1} :catchall_98

    .line 174
    nop

    .line 176
    invoke-static {v7}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 174
    return v5

    .line 162
    :catch_b6
    move-exception v0

    .line 164
    :goto_b7
    :try_start_b7
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Exception @"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 165
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    const-string v1, " while parsing "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 168
    const-string v1, ":"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 170
    const-string v0, "SELinuxMMAC"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_de
    .catchall {:try_start_b7 .. :try_end_de} :catchall_98

    .line 171
    nop

    .line 176
    invoke-static {v7}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 171
    return v5

    .line 176
    :goto_e3
    invoke-static {v7}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v0

    .line 181
    :cond_e7
    new-instance v1, Lcom/android/server/pm/PolicyComparator;

    invoke-direct {v1}, Lcom/android/server/pm/PolicyComparator;-><init>()V

    .line 182
    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 183
    invoke-virtual {v1}, Lcom/android/server/pm/PolicyComparator;->foundDuplicate()Z

    move-result v1

    if-eqz v1, :cond_fd

    .line 184
    const-string v0, "SELinuxMMAC"

    const-string v1, "ERROR! Duplicate entries found parsing mac_permissions.xml files"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    return v5

    .line 188
    :cond_fd
    sget-object v1, Lcom/android/server/pm/SELinuxMMAC;->sPolicies:Ljava/util/List;

    monitor-enter v1

    .line 189
    :try_start_100
    sget-object v3, Lcom/android/server/pm/SELinuxMMAC;->sPolicies:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 190
    sget-object v3, Lcom/android/server/pm/SELinuxMMAC;->sPolicies:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 191
    sput-boolean v2, Lcom/android/server/pm/SELinuxMMAC;->sPolicyRead:Z

    .line 198
    monitor-exit v1

    .line 200
    return v2

    .line 198
    :catchall_10e
    move-exception v0

    monitor-exit v1
    :try_end_110
    .catchall {:try_start_100 .. :try_end_110} :catchall_10e

    throw v0

    .line 130
    :catchall_111
    move-exception v1

    :try_start_112
    monitor-exit v0
    :try_end_113
    .catchall {:try_start_112 .. :try_end_113} :catchall_111

    throw v1
.end method

.method private static readPackageOrThrow(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/pm/Policy$PolicyBuilder;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 270
    const/4 v0, 0x2

    const/4 v1, 0x0

    const-string/jumbo v2, "package"

    invoke-interface {p0, v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 271
    const-string/jumbo v2, "name"

    invoke-interface {p0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 273
    :goto_f
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_3c

    .line 274
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    if-eq v3, v0, :cond_1d

    .line 275
    goto :goto_f

    .line 278
    :cond_1d
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 279
    const-string/jumbo v4, "seinfo"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_38

    .line 280
    const-string/jumbo v3, "value"

    invoke-interface {p0, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 281
    invoke-virtual {p1, v2, v3}, Lcom/android/server/pm/Policy$PolicyBuilder;->addInnerPackageMapOrThrow(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/pm/Policy$PolicyBuilder;

    .line 282
    invoke-static {p0}, Lcom/android/server/pm/SELinuxMMAC;->readSeinfo(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 283
    goto :goto_3b

    .line 284
    :cond_38
    invoke-static {p0}, Lcom/android/server/pm/SELinuxMMAC;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 286
    :goto_3b
    goto :goto_f

    .line 287
    :cond_3c
    return-void
.end method

.method private static readSeinfo(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 297
    const/4 v0, 0x2

    const/4 v1, 0x0

    const-string/jumbo v2, "seinfo"

    invoke-interface {p0, v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 298
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    .line 299
    return-void
.end method

.method private static readSignerOrThrow(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/pm/Policy;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 220
    const/4 v0, 0x2

    const/4 v1, 0x0

    const-string/jumbo v2, "signer"

    invoke-interface {p0, v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 221
    new-instance v2, Lcom/android/server/pm/Policy$PolicyBuilder;

    invoke-direct {v2}, Lcom/android/server/pm/Policy$PolicyBuilder;-><init>()V

    .line 225
    const-string/jumbo v3, "signature"

    invoke-interface {p0, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 226
    if-eqz v4, :cond_19

    .line 227
    invoke-virtual {v2, v4}, Lcom/android/server/pm/Policy$PolicyBuilder;->addSignature(Ljava/lang/String;)Lcom/android/server/pm/Policy$PolicyBuilder;

    .line 230
    :cond_19
    :goto_19
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    const/4 v5, 0x3

    if-eq v4, v5, :cond_66

    .line 231
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v4

    if-eq v4, v0, :cond_27

    .line 232
    goto :goto_19

    .line 235
    :cond_27
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 236
    const-string/jumbo v5, "seinfo"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_42

    .line 237
    const-string/jumbo v4, "value"

    invoke-interface {p0, v1, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 238
    invoke-virtual {v2, v4}, Lcom/android/server/pm/Policy$PolicyBuilder;->setGlobalSeinfoOrThrow(Ljava/lang/String;)Lcom/android/server/pm/Policy$PolicyBuilder;

    .line 239
    invoke-static {p0}, Lcom/android/server/pm/SELinuxMMAC;->readSeinfo(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 240
    goto :goto_65

    :cond_42
    const-string/jumbo v5, "package"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4f

    .line 241
    invoke-static {p0, v2}, Lcom/android/server/pm/SELinuxMMAC;->readPackageOrThrow(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/pm/Policy$PolicyBuilder;)V

    goto :goto_65

    .line 242
    :cond_4f
    const-string v5, "cert"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_62

    .line 243
    invoke-interface {p0, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 244
    invoke-virtual {v2, v4}, Lcom/android/server/pm/Policy$PolicyBuilder;->addSignature(Ljava/lang/String;)Lcom/android/server/pm/Policy$PolicyBuilder;

    .line 245
    invoke-static {p0}, Lcom/android/server/pm/SELinuxMMAC;->readCert(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 246
    goto :goto_65

    .line 247
    :cond_62
    invoke-static {p0}, Lcom/android/server/pm/SELinuxMMAC;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 249
    :goto_65
    goto :goto_19

    .line 251
    :cond_66
    invoke-virtual {v2}, Lcom/android/server/pm/Policy$PolicyBuilder;->build()Lcom/android/server/pm/Policy;

    move-result-object p0

    return-object p0
.end method

.method private static skip(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 302
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1b

    .line 305
    const/4 v0, 0x1

    .line 306
    :goto_8
    if-eqz v0, :cond_1a

    .line 307
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    if-eq v2, v1, :cond_17

    const/4 v3, 0x3

    if-eq v2, v3, :cond_14

    goto :goto_19

    .line 309
    :cond_14
    add-int/lit8 v0, v0, -0x1

    .line 310
    goto :goto_19

    .line 312
    :cond_17
    add-int/lit8 v0, v0, 0x1

    .line 313
    :goto_19
    goto :goto_8

    .line 316
    :cond_1a
    return-void

    .line 303
    :cond_1b
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method
