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
    .registers 6

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
    .local v0, "productMacPermission":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_34

    .line 88
    sget-object v1, Lcom/android/server/pm/SELinuxMMAC;->sMacPermissions:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    :cond_34
    new-instance v1, Ljava/io/File;

    .line 95
    invoke-static {}, Landroid/os/Environment;->getVendorDirectory()Ljava/io/File;

    move-result-object v2

    const-string v3, "/etc/selinux/vendor_mac_permissions.xml"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 96
    .local v1, "vendorMacPermission":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_4b

    .line 97
    sget-object v2, Lcom/android/server/pm/SELinuxMMAC;->sMacPermissions:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5b

    .line 100
    :cond_4b
    sget-object v2, Lcom/android/server/pm/SELinuxMMAC;->sMacPermissions:Ljava/util/List;

    new-instance v3, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getVendorDirectory()Ljava/io/File;

    move-result-object v4

    const-string v5, "/etc/selinux/nonplat_mac_permissions.xml"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    :goto_5b
    new-instance v2, Ljava/io/File;

    .line 106
    invoke-static {}, Landroid/os/Environment;->getOdmDirectory()Ljava/io/File;

    move-result-object v3

    const-string v4, "/etc/selinux/odm_mac_permissions.xml"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 107
    .local v2, "odmMacPermission":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_71

    .line 108
    sget-object v3, Lcom/android/server/pm/SELinuxMMAC;->sMacPermissions:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    .end local v0  # "productMacPermission":Ljava/io/File;
    .end local v1  # "vendorMacPermission":Ljava/io/File;
    .end local v2  # "odmMacPermission":Ljava/io/File;
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
    .registers 9
    .param p0, "pkg"  # Landroid/content/pm/PackageParser$Package;
    .param p1, "isPrivileged"  # Z
    .param p2, "targetSandboxVersion"  # I
    .param p3, "targetSdkVersion"  # I

    .line 334
    const/4 v0, 0x0

    .line 335
    .local v0, "seInfo":Ljava/lang/String;
    sget-object v1, Lcom/android/server/pm/SELinuxMMAC;->sPolicies:Ljava/util/List;

    monitor-enter v1

    .line 336
    :try_start_4
    sget-boolean v2, Lcom/android/server/pm/SELinuxMMAC;->sPolicyRead:Z

    if-nez v2, :cond_9

    goto :goto_24

    .line 341
    :cond_9
    sget-object v2, Lcom/android/server/pm/SELinuxMMAC;->sPolicies:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_24

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/Policy;

    .line 342
    .local v3, "policy":Lcom/android/server/pm/Policy;
    invoke-virtual {v3, p0}, Lcom/android/server/pm/Policy;->getMatchedSeInfo(Landroid/content/pm/PackageParser$Package;)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    .line 343
    if-eqz v0, :cond_23

    .line 344
    goto :goto_24

    .line 346
    .end local v3  # "policy":Lcom/android/server/pm/Policy;
    :cond_23
    goto :goto_f

    .line 348
    :cond_24
    :goto_24
    monitor-exit v1
    :try_end_25
    .catchall {:try_start_4 .. :try_end_25} :catchall_65

    .line 350
    if-nez v0, :cond_29

    .line 351
    const-string v0, "default"

    .line 354
    :cond_29
    const/4 v1, 0x2

    if-ne p2, v1, :cond_3d

    .line 355
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":v2"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 358
    :cond_3d
    if-eqz p1, :cond_50

    .line 359
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":privapp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 362
    :cond_50
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":targetSdkVersion="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 368
    return-object v0

    .line 348
    :catchall_65
    move-exception v2

    :try_start_66
    monitor-exit v1
    :try_end_67
    .catchall {:try_start_66 .. :try_end_67} :catchall_65

    throw v2
.end method

.method private static readCert(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 4
    .param p0, "parser"  # Lorg/xmlpull/v1/XmlPullParser;
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
    .registers 13

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
    .catchall {:try_start_3 .. :try_end_b} :catchall_109

    .line 133
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v0

    .line 135
    .local v1, "policies":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/Policy;>;"
    const/4 v0, 0x0

    .line 136
    .local v0, "policyFile":Ljava/io/FileReader;
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    .line 138
    .local v3, "parser":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v4, Lcom/android/server/pm/SELinuxMMAC;->sMacPermissions:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    .line 139
    .local v4, "count":I
    const/4 v5, 0x0

    move-object v6, v0

    .end local v0  # "policyFile":Ljava/io/FileReader;
    .local v5, "i":I
    .local v6, "policyFile":Ljava/io/FileReader;
    :goto_1e
    const/4 v0, 0x0

    if-ge v5, v4, :cond_df

    .line 140
    sget-object v7, Lcom/android/server/pm/SELinuxMMAC;->sMacPermissions:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/io/File;

    .line 142
    .local v7, "macPermission":Ljava/io/File;
    :try_start_29
    new-instance v8, Ljava/io/FileReader;

    invoke-direct {v8, v7}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    move-object v6, v8

    .line 143
    const-string v8, "SELinuxMMAC"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Using policy file "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    invoke-interface {v3, v6}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 146
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    .line 147
    const/4 v8, 0x0

    const-string/jumbo v9, "policy"

    const/4 v10, 0x2

    invoke-interface {v3, v10, v8, v9}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 149
    :goto_53
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8

    const/4 v9, 0x3

    if-eq v8, v9, :cond_89

    .line 150
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v8

    if-eq v8, v10, :cond_61

    .line 151
    goto :goto_53

    .line 154
    :cond_61
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    const/4 v9, -0x1

    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v11

    const v12, -0x35ca90d6  # -2972618.5f

    if-eq v11, v12, :cond_70

    :cond_6f
    goto :goto_7a

    :cond_70
    const-string/jumbo v11, "signer"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6f

    move v9, v0

    :goto_7a
    if-eqz v9, :cond_80

    .line 159
    invoke-static {v3}, Lcom/android/server/pm/SELinuxMMAC;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_88

    .line 156
    :cond_80
    invoke-static {v3}, Lcom/android/server/pm/SELinuxMMAC;->readSignerOrThrow(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/pm/Policy;

    move-result-object v8

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_87
    .catch Ljava/lang/IllegalStateException; {:try_start_29 .. :try_end_87} :catch_ae
    .catch Ljava/lang/IllegalArgumentException; {:try_start_29 .. :try_end_87} :catch_ae
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_29 .. :try_end_87} :catch_ae
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_87} :catch_92
    .catchall {:try_start_29 .. :try_end_87} :catchall_90

    .line 157
    nop

    .line 159
    :goto_88
    goto :goto_53

    .line 176
    :cond_89
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 177
    nop

    .line 139
    .end local v7  # "macPermission":Ljava/io/File;
    add-int/lit8 v5, v5, 0x1

    goto :goto_1e

    .line 176
    .restart local v7  # "macPermission":Ljava/io/File;
    :catchall_90
    move-exception v0

    goto :goto_db

    .line 172
    :catch_92
    move-exception v2

    .line 173
    .local v2, "ioe":Ljava/io/IOException;
    :try_start_93
    const-string v8, "SELinuxMMAC"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Exception parsing "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a9
    .catchall {:try_start_93 .. :try_end_a9} :catchall_90

    .line 174
    nop

    .line 176
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 174
    return v0

    .line 162
    .end local v2  # "ioe":Ljava/io/IOException;
    :catch_ae
    move-exception v2

    .line 164
    .local v2, "ex":Ljava/lang/Exception;
    :try_start_af
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Exception @"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 165
    .local v8, "sb":Ljava/lang/StringBuilder;
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    const-string v9, " while parsing "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 168
    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 170
    const-string v9, "SELinuxMMAC"

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d6
    .catchall {:try_start_af .. :try_end_d6} :catchall_90

    .line 171
    nop

    .line 176
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 171
    return v0

    .line 176
    .end local v2  # "ex":Ljava/lang/Exception;
    .end local v8  # "sb":Ljava/lang/StringBuilder;
    :goto_db
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v0

    .line 181
    .end local v5  # "i":I
    .end local v7  # "macPermission":Ljava/io/File;
    :cond_df
    new-instance v5, Lcom/android/server/pm/PolicyComparator;

    invoke-direct {v5}, Lcom/android/server/pm/PolicyComparator;-><init>()V

    .line 182
    .local v5, "policySort":Lcom/android/server/pm/PolicyComparator;
    invoke-static {v1, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 183
    invoke-virtual {v5}, Lcom/android/server/pm/PolicyComparator;->foundDuplicate()Z

    move-result v7

    if-eqz v7, :cond_f5

    .line 184
    const-string v2, "SELinuxMMAC"

    const-string v7, "ERROR! Duplicate entries found parsing mac_permissions.xml files"

    invoke-static {v2, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    return v0

    .line 188
    :cond_f5
    sget-object v7, Lcom/android/server/pm/SELinuxMMAC;->sPolicies:Ljava/util/List;

    monitor-enter v7

    .line 189
    :try_start_f8
    sget-object v0, Lcom/android/server/pm/SELinuxMMAC;->sPolicies:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 190
    sget-object v0, Lcom/android/server/pm/SELinuxMMAC;->sPolicies:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 191
    sput-boolean v2, Lcom/android/server/pm/SELinuxMMAC;->sPolicyRead:Z

    .line 198
    monitor-exit v7

    .line 200
    return v2

    .line 198
    :catchall_106
    move-exception v0

    monitor-exit v7
    :try_end_108
    .catchall {:try_start_f8 .. :try_end_108} :catchall_106

    throw v0

    .line 130
    .end local v1  # "policies":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/Policy;>;"
    .end local v3  # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v4  # "count":I
    .end local v5  # "policySort":Lcom/android/server/pm/PolicyComparator;
    .end local v6  # "policyFile":Ljava/io/FileReader;
    :catchall_109
    move-exception v1

    :try_start_10a
    monitor-exit v0
    :try_end_10b
    .catchall {:try_start_10a .. :try_end_10b} :catchall_109

    throw v1
.end method

.method private static readPackageOrThrow(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/pm/Policy$PolicyBuilder;)V
    .registers 7
    .param p0, "parser"  # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "pb"  # Lcom/android/server/pm/Policy$PolicyBuilder;
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
    .local v2, "pkgName":Ljava/lang/String;
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
    .local v3, "tagName":Ljava/lang/String;
    const-string/jumbo v4, "seinfo"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_38

    .line 280
    const-string/jumbo v4, "value"

    invoke-interface {p0, v1, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 281
    .local v4, "seinfo":Ljava/lang/String;
    invoke-virtual {p1, v2, v4}, Lcom/android/server/pm/Policy$PolicyBuilder;->addInnerPackageMapOrThrow(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/pm/Policy$PolicyBuilder;

    .line 282
    invoke-static {p0}, Lcom/android/server/pm/SELinuxMMAC;->readSeinfo(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 283
    .end local v4  # "seinfo":Ljava/lang/String;
    goto :goto_3b

    .line 284
    :cond_38
    invoke-static {p0}, Lcom/android/server/pm/SELinuxMMAC;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 286
    .end local v3  # "tagName":Ljava/lang/String;
    :goto_3b
    goto :goto_f

    .line 287
    :cond_3c
    return-void
.end method

.method private static readSeinfo(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 4
    .param p0, "parser"  # Lorg/xmlpull/v1/XmlPullParser;
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
    .registers 8
    .param p0, "parser"  # Lorg/xmlpull/v1/XmlPullParser;
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
    .local v2, "pb":Lcom/android/server/pm/Policy$PolicyBuilder;
    const-string/jumbo v3, "signature"

    invoke-interface {p0, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 226
    .local v4, "cert":Ljava/lang/String;
    if-eqz v4, :cond_19

    .line 227
    invoke-virtual {v2, v4}, Lcom/android/server/pm/Policy$PolicyBuilder;->addSignature(Ljava/lang/String;)Lcom/android/server/pm/Policy$PolicyBuilder;

    .line 230
    :cond_19
    :goto_19
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    const/4 v6, 0x3

    if-eq v5, v6, :cond_66

    .line 231
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v5

    if-eq v5, v0, :cond_27

    .line 232
    goto :goto_19

    .line 235
    :cond_27
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 236
    .local v5, "tagName":Ljava/lang/String;
    const-string/jumbo v6, "seinfo"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_42

    .line 237
    const-string/jumbo v6, "value"

    invoke-interface {p0, v1, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 238
    .local v6, "seinfo":Ljava/lang/String;
    invoke-virtual {v2, v6}, Lcom/android/server/pm/Policy$PolicyBuilder;->setGlobalSeinfoOrThrow(Ljava/lang/String;)Lcom/android/server/pm/Policy$PolicyBuilder;

    .line 239
    invoke-static {p0}, Lcom/android/server/pm/SELinuxMMAC;->readSeinfo(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 240
    .end local v6  # "seinfo":Ljava/lang/String;
    goto :goto_65

    :cond_42
    const-string/jumbo v6, "package"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4f

    .line 241
    invoke-static {p0, v2}, Lcom/android/server/pm/SELinuxMMAC;->readPackageOrThrow(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/pm/Policy$PolicyBuilder;)V

    goto :goto_65

    .line 242
    :cond_4f
    const-string v6, "cert"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_62

    .line 243
    invoke-interface {p0, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 244
    .local v6, "sig":Ljava/lang/String;
    invoke-virtual {v2, v6}, Lcom/android/server/pm/Policy$PolicyBuilder;->addSignature(Ljava/lang/String;)Lcom/android/server/pm/Policy$PolicyBuilder;

    .line 245
    invoke-static {p0}, Lcom/android/server/pm/SELinuxMMAC;->readCert(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 246
    .end local v6  # "sig":Ljava/lang/String;
    goto :goto_65

    .line 247
    :cond_62
    invoke-static {p0}, Lcom/android/server/pm/SELinuxMMAC;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 249
    .end local v5  # "tagName":Ljava/lang/String;
    :goto_65
    goto :goto_19

    .line 251
    :cond_66
    invoke-virtual {v2}, Lcom/android/server/pm/Policy$PolicyBuilder;->build()Lcom/android/server/pm/Policy;

    move-result-object v0

    return-object v0
.end method

.method private static skip(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 5
    .param p0, "p"  # Lorg/xmlpull/v1/XmlPullParser;
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
    .local v0, "depth":I
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
    .end local v0  # "depth":I
    :cond_1b
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
