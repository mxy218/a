.class public Lflyme/support/v7/permission/PackageManagerProxy;
.super Ljava/lang/Object;
.source "PackageManagerProxy.java"


# instance fields
.field private mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Landroid/content/pm/PackageManager;)V
    .registers 2

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lflyme/support/v7/permission/PackageManagerProxy;->mPackageManager:Landroid/content/pm/PackageManager;

    return-void
.end method

.method private handleAndroidQRuntimePermissionIfNeed(Ljava/lang/String;Ljava/util/Set;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 79
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1d

    if-ge p0, v0, :cond_7

    return-void

    :cond_7
    const/4 p0, -0x1

    .line 82
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_132

    goto/16 :goto_82

    :sswitch_11
    const-string v0, "android.permission-group.SMS"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_82

    const/4 p0, 0x1

    goto/16 :goto_82

    :sswitch_1c
    const-string v0, "android.permission-group.MICROPHONE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_82

    const/16 p0, 0xa

    goto :goto_82

    :sswitch_27
    const-string v0, "android.permission-group.STORAGE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_82

    const/4 p0, 0x6

    goto :goto_82

    :sswitch_31
    const-string v0, "android.permission-group.LOCATION"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_82

    const/4 p0, 0x3

    goto :goto_82

    :sswitch_3b
    const-string v0, "android.permission-group.SENSORS"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_82

    const/4 p0, 0x5

    goto :goto_82

    :sswitch_45
    const-string v0, "android.permission-group.ACTIVITY_RECOGNITION"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_82

    const/16 p0, 0x9

    goto :goto_82

    :sswitch_50
    const-string v0, "android.permission-group.CAMERA"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_82

    const/16 p0, 0x8

    goto :goto_82

    :sswitch_5b
    const-string v0, "android.permission-group.CALL_LOG"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_82

    const/4 p0, 0x2

    goto :goto_82

    :sswitch_65
    const-string v0, "android.permission-group.CALENDAR"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_82

    const/4 p0, 0x0

    goto :goto_82

    :sswitch_6f
    const-string v0, "android.permission-group.PHONE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_82

    const/4 p0, 0x4

    goto :goto_82

    :sswitch_79
    const-string v0, "android.permission-group.CONTACTS"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_82

    const/4 p0, 0x7

    :cond_82
    :goto_82
    packed-switch p0, :pswitch_data_160

    goto/16 :goto_131

    :pswitch_87  #0xa
    const-string p0, "android.permission.RECORD_AUDIO"

    .line 134
    invoke-interface {p2, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_131

    :pswitch_8e  #0x9
    const-string p0, "android.permission.ACTIVITY_RECOGNITION"

    .line 131
    invoke-interface {p2, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_131

    :pswitch_95  #0x8
    const-string p0, "android.permission.CAMERA"

    .line 128
    invoke-interface {p2, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_131

    :pswitch_9c  #0x7
    const-string p0, "android.permission.WRITE_CONTACTS"

    .line 123
    invoke-interface {p2, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string p0, "android.permission.GET_ACCOUNTS"

    .line 124
    invoke-interface {p2, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string p0, "android.permission.READ_CONTACTS"

    .line 125
    invoke-interface {p2, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_131

    :pswitch_ad  #0x6
    const-string p0, "android.permission.READ_EXTERNAL_STORAGE"

    .line 118
    invoke-interface {p2, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string p0, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 119
    invoke-interface {p2, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string p0, "android.permission.ACCESS_MEDIA_LOCATION"

    .line 120
    invoke-interface {p2, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_131

    :pswitch_be  #0x5
    const-string p0, "android.permission.BODY_SENSORS"

    .line 115
    invoke-interface {p2, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_131

    :pswitch_c4  #0x4
    const-string p0, "android.permission.ANSWER_PHONE_CALLS"

    .line 106
    invoke-interface {p2, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string p0, "android.permission.READ_PHONE_NUMBERS"

    .line 107
    invoke-interface {p2, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string p0, "android.permission.READ_PHONE_STATE"

    .line 108
    invoke-interface {p2, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string p0, "android.permission.CALL_PHONE"

    .line 109
    invoke-interface {p2, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string p0, "android.permission.ACCEPT_HANDOVER"

    .line 110
    invoke-interface {p2, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string p0, "android.permission.USE_SIP"

    .line 111
    invoke-interface {p2, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string p0, "com.android.voicemail.permission.ADD_VOICEMAIL"

    .line 112
    invoke-interface {p2, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_131

    :pswitch_e8  #0x3
    const-string p0, "android.permission.ACCESS_FINE_LOCATION"

    .line 101
    invoke-interface {p2, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string p0, "android.permission.ACCESS_COARSE_LOCATION"

    .line 102
    invoke-interface {p2, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string p0, "android.permission.ACCESS_BACKGROUND_LOCATION"

    .line 103
    invoke-interface {p2, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_131

    :pswitch_f8  #0x2
    const-string p0, "android.permission.READ_CALL_LOG"

    .line 96
    invoke-interface {p2, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string p0, "android.permission.WRITE_CALL_LOG"

    .line 97
    invoke-interface {p2, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string p0, "android.permission.PROCESS_OUTGOING_CALLS"

    .line 98
    invoke-interface {p2, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_131

    :pswitch_108  #0x1
    const-string p0, "android.permission.READ_SMS"

    .line 88
    invoke-interface {p2, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string p0, "android.permission.RECEIVE_WAP_PUSH"

    .line 89
    invoke-interface {p2, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string p0, "android.permission.RECEIVE_MMS"

    .line 90
    invoke-interface {p2, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string p0, "android.permission.RECEIVE_SMS"

    .line 91
    invoke-interface {p2, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string p0, "android.permission.SEND_SMS"

    .line 92
    invoke-interface {p2, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string p0, "android.permission.READ_CELL_BROADCASTS"

    .line 93
    invoke-interface {p2, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_131

    :pswitch_127  #0x0
    const-string p0, "android.permission.READ_CALENDAR"

    .line 84
    invoke-interface {p2, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string p0, "android.permission.WRITE_CALENDAR"

    .line 85
    invoke-interface {p2, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_131
    return-void

    :sswitch_data_132
    .sparse-switch
        -0x61be3c1f -> :sswitch_79
        -0x540bd380 -> :sswitch_6f
        -0x4a8ca134 -> :sswitch_65
        -0x4a2222af -> :sswitch_5b
        -0x440149cd -> :sswitch_50
        0xd69c4f5 -> :sswitch_45
        0x1923928b -> :sswitch_3b
        0x31640343 -> :sswitch_31
        0x32c9b10d -> :sswitch_27
        0x5e404d38 -> :sswitch_1c
        0x6b004ceb -> :sswitch_11
    .end sparse-switch

    :pswitch_data_160
    .packed-switch 0x0
        :pswitch_127  #00000000
        :pswitch_108  #00000001
        :pswitch_f8  #00000002
        :pswitch_e8  #00000003
        :pswitch_c4  #00000004
        :pswitch_be  #00000005
        :pswitch_ad  #00000006
        :pswitch_9c  #00000007
        :pswitch_95  #00000008
        :pswitch_8e  #00000009
        :pswitch_87  #0000000a
    .end packed-switch
.end method


# virtual methods
.method public getAllPermissionGroups()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 34
    iget-object p0, p0, Lflyme/support/v7/permission/PackageManagerProxy;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v1, 0x80

    invoke-virtual {p0, v1}, Landroid/content/pm/PackageManager;->getAllPermissionGroups(I)Ljava/util/List;

    move-result-object p0

    .line 35
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_11
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PermissionGroupInfo;

    .line 36
    iget-object v1, v1, Landroid/content/pm/PermissionGroupInfo;->name:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_11

    :cond_23
    const-string p0, "meizu.permission-group.NETWORK"

    .line 38
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p0, "meizu.permission-group.CHANGE_NETWORK"

    .line 39
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p0, "meizu.permission-group.BLUETOOTH"

    .line 40
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p0, "meizu.permission-group.OTHER"

    .line 41
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt p0, v1, :cond_42

    const-string p0, "android.permission-group.UNDEFINED"

    .line 43
    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_42
    return-object v0
.end method

.method public loadPermissionGroupLabel(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const-string v0, "meizu.permission-group.NETWORK"

    .line 142
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 143
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lflyme/support/v7/appcompat/R$string;->mz_permissiongroup_name_net:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_13
    const-string v0, "meizu.permission-group.CHANGE_NETWORK"

    .line 144
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 145
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lflyme/support/v7/appcompat/R$string;->mz_permissiongroup_name_change_network:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_26
    const-string v0, "meizu.permission-group.BLUETOOTH"

    .line 146
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 147
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lflyme/support/v7/appcompat/R$string;->mz_permissiongroup_name_bluetooth:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_39
    const-string v0, "meizu.permission-group.OTHER"

    .line 148
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 149
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lflyme/support/v7/appcompat/R$string;->mz_permissiongroup_name_other:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 152
    :cond_4c
    :try_start_4c
    iget-object p1, p0, Lflyme/support/v7/permission/PackageManagerProxy;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v0, 0x80

    invoke-virtual {p1, p2, v0}, Landroid/content/pm/PackageManager;->getPermissionGroupInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionGroupInfo;

    move-result-object p1

    .line 153
    iget-object p0, p0, Lflyme/support/v7/permission/PackageManagerProxy;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, p0}, Landroid/content/pm/PermissionGroupInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_5e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4c .. :try_end_5e} :catch_5f

    return-object p0

    :catch_5f
    const/4 p0, 0x0

    return-object p0
.end method

.method public loadPermissionLabel(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    .line 162
    :try_start_1
    iget-object v1, p0, Lflyme/support/v7/permission/PackageManagerProxy;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v2, 0x80

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object p1

    .line 163
    iget v1, p1, Landroid/content/pm/PermissionInfo;->labelRes:I

    if-nez v1, :cond_e

    return-object v0

    .line 166
    :cond_e
    iget-object p0, p0, Lflyme/support/v7/permission/PackageManagerProxy;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, p0}, Landroid/content/pm/PermissionInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_18
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_18} :catch_19

    return-object p0

    :catch_19
    return-object v0
.end method

.method public queryPermissionsByGroup(Ljava/lang/String;)Ljava/util/Set;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 50
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const-string v1, "meizu.permission-group.NETWORK"

    .line 51
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    const-string v1, "android.permission.INTERNET"

    .line 52
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    .line 53
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "android.permission.CHANGE_NETWORK_STATE"

    .line 54
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_72

    :cond_1d
    const-string v1, "meizu.permission-group.CHANGE_NETWORK"

    .line 55
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    const-string v1, "android.permission.CHANGE_WIFI_STATE"

    .line 56
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_72

    :cond_2b
    const-string v1, "meizu.permission-group.BLUETOOTH"

    .line 57
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3e

    const-string v1, "android.permission.BLUETOOTH"

    .line 58
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "android.permission.BLUETOOTH_ADMIN"

    .line 59
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_72

    :cond_3e
    const-string v1, "meizu.permission-group.OTHER"

    .line 60
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_47

    goto :goto_72

    .line 64
    :cond_47
    :try_start_47
    iget-object v1, p0, Lflyme/support/v7/permission/PackageManagerProxy;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v2, 0x80

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->queryPermissionsByGroup(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v1

    .line 65
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_53
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_65

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PermissionInfo;

    .line 66
    iget-object v2, v2, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_53

    :cond_65
    const-string v1, "android.permission-group.SMS"

    .line 68
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_72

    const-string v1, "android.permission.WRITE_SMS"

    .line 69
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_72} :catch_72

    .line 74
    :catch_72
    :cond_72
    :goto_72
    invoke-direct {p0, p1, v0}, Lflyme/support/v7/permission/PackageManagerProxy;->handleAndroidQRuntimePermissionIfNeed(Ljava/lang/String;Ljava/util/Set;)V

    return-object v0
.end method
