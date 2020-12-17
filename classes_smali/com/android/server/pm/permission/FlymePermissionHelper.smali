.class public Lcom/android/server/pm/permission/FlymePermissionHelper;
.super Ljava/lang/Object;
.source "FlymePermissionHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/permission/FlymePermissionHelper$ExternalSystemPackageInfo;
    }
.end annotation


# static fields
.field private static final COM_ANDROID_PACKAGE:Ljava/lang/String; = "com.android.vending"

.field private static final COM_ANDROID_SIGNATURE:Ljava/lang/String; = "308204433082032ba003020102020900c2e08746644a308d300d06092a864886f70d01010405003074310b3009060355040613025553311330110603550408130a43616c69666f726e6961311630140603550407130d4d6f756e7461696e205669657731143012060355040a130b476f6f676c6520496e632e3110300e060355040b1307416e64726f69643110300e06035504031307416e64726f6964301e170d3038303832313233313333345a170d3336303130373233313333345a3074310b3009060355040613025553311330110603550408130a43616c69666f726e6961311630140603550407130d4d6f756e7461696e205669657731143012060355040a130b476f6f676c6520496e632e3110300e060355040b1307416e64726f69643110300e06035504031307416e64726f696430820120300d06092a864886f70d01010105000382010d00308201080282010100ab562e00d83ba208ae0a966f124e29da11f2ab56d08f58e2cca91303e9b754d372f640a71b1dcb130967624e4656a7776a92193db2e5bfb724a91e77188b0e6a47a43b33d9609b77183145ccdf7b2e586674c9e1565b1f4c6a5955bff251a63dabf9c55c27222252e875e4f8154a645f897168c0b1bfc612eabf785769bb34aa7984dc7e2ea2764cae8307d8c17154d7ee5f64a51a44a602c249054157dc02cd5f5c0e55fbef8519fbe327f0b1511692c5a06f19d18385f5c4dbc2d6b93f68cc2979c70e18ab93866b3bd5db8999552a0e3b4c99df58fb918bedc182ba35e003c1b4b10dd244a8ee24fffd333872ab5221985edab0fc0d0b145b6aa192858e79020103a381d93081d6301d0603551d0e04160414c77d8cc2211756259a7fd382df6be398e4d786a53081a60603551d2304819e30819b8014c77d8cc2211756259a7fd382df6be398e4d786a5a178a4763074310b3009060355040613025553311330110603550408130a43616c69666f726e6961311630140603550407130d4d6f756e7461696e205669657731143012060355040a130b476f6f676c6520496e632e3110300e060355040b1307416e64726f69643110300e06035504031307416e64726f6964820900c2e08746644a308d300c0603551d13040530030101ff300d06092a864886f70d010104050003820101006dd252ceef85302c360aaace939bcff2cca904bb5d7a1661f8ae46b2994204d0ff4a68c7ed1a531ec4595a623ce60763b167297a7ae35712c407f208f0cb109429124d7b106219c084ca3eb3f9ad5fb871ef92269a8be28bf16d44c8d9a08e6cb2f005bb3fe2cb96447e868e731076ad45b33f6009ea19c161e62641aa99271dfd5228c5c587875ddb7f452758d661f6cc0cccb7352e424cc4365c523532f7325137593c4ae341f4db41edda0d0b1071a7c440f0fe9ea01cb627ca674369d084bd2fd911ff06cdbf2cfa10dc0f893ae35762919048c7efc64c7144178342f70581c9de573af55b390dd7fdb9418631895d5f759f30112687ff621410c069308a"

.field private static final COM_BOOKMARKS:Ljava/lang/String; = "com.google.android.syncadapters.bookmarks"

.field private static final COM_CALENDAR:Ljava/lang/String; = "com.google.android.syncadapters.calendar"

.field private static final COM_CMSCORE:Ljava/lang/String; = "com.google.android.gms"

.field private static final COM_CONTACTS:Ljava/lang/String; = "com.google.android.syncadapters.contacts"

.field private static final COM_FEEDBACK:Ljava/lang/String; = "com.google.android.feedback"

.field private static final COM_FLYMEBBS_PACKAGE:Ljava/lang/String; = "com.meizu.flyme.flymebbs"

.field private static final COM_FLYMEBBS_SIGNATURE:Ljava/lang/String; = "308203d7308202bfa003020102020900b8025912377deb24300d06092a864886f70d0101050500308181310b300906035504061302434e3112301006035504080c094775616e675a686f753114301206035504070c0b5a68754861692056696577310e300c060355040a0c054d65697a75310e300c060355040b0c054d65697a75310b300906035504030c026d78311b301906092a864886f70d010901160c6d78406d65697a752e636f6d301e170d3135303132333039323831365a170d3432303631303039323831365a308181310b300906035504061302434e3112301006035504080c094775616e675a686f753114301206035504070c0b5a68754861692056696577310e300c060355040a0c054d65697a75310e300c060355040b0c054d65697a75310b300906035504030c026d78311b301906092a864886f70d010901160c6d78406d65697a752e636f6d30820122300d06092a864886f70d01010105000382010f003082010a0282010100c52c4d380186ae6465b90b0fdd318c631a88571babd5d940949b180353b2843af0635375bd188d73d760fa7cd61960e7fbfb0fe0fe9fa8f18e802fe46f03c658088eeaf014099bd39486253e9753b382088c1e6474d962bd89a457ee288bfdf3fa4578c37e991947b0e8ece671bd50faa124b337e813ab4b9a6bfe633703164f9b0f7a8e6c0d87989730fdc3e402e944166f880cab096a765726599d78617778206e6a8bc1bb45ad9dbd9fcbf487ed51b6e4f3f1b69f4e5db8436612566f2c0cc9c8151f0e69ad741208e1de13513315cd4c66d0f8e21478efd154290aa420cdf14b62152a1ea894f051071f364945f4b1082ac5fa6f282de7f1e2f1e3e366850203010001a350304e301d0603551d0e04160414e4159e1a3f280e38e072f72eaac1153131539636301f0603551d23041830168014e4159e1a3f280e38e072f72eaac1153131539636300c0603551d13040530030101ff300d06092a864886f70d01010505000382010100996996e5906ec3513c9ec74c34019ede17eb999cfab752cb6e4f32bca5d5561464e8ccdfd8bf624efe222cc54441a5362ff23994c867428a3bb2f50c8b17b52ccfe0c71d6ca42bb66cd5b32d246a95b1648633035f9da4b30bc84d48e6c75ed446a207729193ddd24dfb9e8a2f0b74671a920ccfc9700a5de07be368aca721f90520c8d1a34869d6198b8d00ddb71f3379f8014c9bc4c51f08d717915fb59dfbcb214e845f6a8e0995b931307f5775235550dd65e663ea394436c0bef7363b5a2e314c440b8c036ee95c7526a963deaa1895491d6e499affb734563c61ba9c38a327a218f86e0c3aef108ba7850dfe5924cd831c5e6154a48d89905c43aca1da"

.field private static final COM_GSF:Ljava/lang/String; = "com.google.android.gsf"

.field private static final COM_GSF_LOGIN:Ljava/lang/String; = "com.google.android.gsf.login"

.field private static final COM_HOWIE_PACKAGE:Ljava/lang/String; = "com.howie.gserverinstall"

.field private static final COM_HOWIE_SIGNATURE:Ljava/lang/String; = "3082019730820100a003020102020453db3661300d06092a864886f70d0101050500300f310d300b06035504031304776f6e673020170d3134303830313036343033335a180f32313134303730383036343033335a300f310d300b06035504031304776f6e6730819f300d06092a864886f70d010101050003818d0030818902818100b45f4fdf9b05adb3cc48871cb053056af1edaa449ad1bdfc45d29cff3e77ebd1435d253d7a7d05a62da744f8c7b98318c46d0421163d15c8a6aab83f5b00fbd2cdb2b5831593485f86e848305ae0f31950e002bbcdc2ffee4d65bf81861ded95e98d5bba05db4662c08613ac5b0a65fe46177f2dcff387232c00a6efa92231890203010001300d06092a864886f70d01010505000381810020bd0d1d07eafe262fb3513f08b8994b9519a6bb5c1af0cd31fe571c6c54f09f60b1d27d5583e6d6d8ae0e85cf389f82cb405b6a6fea2322620d91f3efe9f41cbb9b4f1e4f177b724da40f73efe107010ea7074686362df5c96d3252be7a91ddb01fba048b4fe31c59372cd3903bb809b7577b66b1df96edb0b8a90f2b55ade6"

.field private static final COM_TRANSPORT:Ljava/lang/String; = "com.google.android.backuptransport"

.field private static sExtSysApkWhiteList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/pm/permission/FlymePermissionHelper$ExternalSystemPackageInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 136
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/pm/permission/FlymePermissionHelper;->sExtSysApkWhiteList:Ljava/util/ArrayList;

    .line 139
    sget-object v0, Lcom/android/server/pm/permission/FlymePermissionHelper;->sExtSysApkWhiteList:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/server/pm/permission/FlymePermissionHelper$ExternalSystemPackageInfo;

    const-string v2, "308204433082032ba003020102020900c2e08746644a308d300d06092a864886f70d01010405003074310b3009060355040613025553311330110603550408130a43616c69666f726e6961311630140603550407130d4d6f756e7461696e205669657731143012060355040a130b476f6f676c6520496e632e3110300e060355040b1307416e64726f69643110300e06035504031307416e64726f6964301e170d3038303832313233313333345a170d3336303130373233313333345a3074310b3009060355040613025553311330110603550408130a43616c69666f726e6961311630140603550407130d4d6f756e7461696e205669657731143012060355040a130b476f6f676c6520496e632e3110300e060355040b1307416e64726f69643110300e06035504031307416e64726f696430820120300d06092a864886f70d01010105000382010d00308201080282010100ab562e00d83ba208ae0a966f124e29da11f2ab56d08f58e2cca91303e9b754d372f640a71b1dcb130967624e4656a7776a92193db2e5bfb724a91e77188b0e6a47a43b33d9609b77183145ccdf7b2e586674c9e1565b1f4c6a5955bff251a63dabf9c55c27222252e875e4f8154a645f897168c0b1bfc612eabf785769bb34aa7984dc7e2ea2764cae8307d8c17154d7ee5f64a51a44a602c249054157dc02cd5f5c0e55fbef8519fbe327f0b1511692c5a06f19d18385f5c4dbc2d6b93f68cc2979c70e18ab93866b3bd5db8999552a0e3b4c99df58fb918bedc182ba35e003c1b4b10dd244a8ee24fffd333872ab5221985edab0fc0d0b145b6aa192858e79020103a381d93081d6301d0603551d0e04160414c77d8cc2211756259a7fd382df6be398e4d786a53081a60603551d2304819e30819b8014c77d8cc2211756259a7fd382df6be398e4d786a5a178a4763074310b3009060355040613025553311330110603550408130a43616c69666f726e6961311630140603550407130d4d6f756e7461696e205669657731143012060355040a130b476f6f676c6520496e632e3110300e060355040b1307416e64726f69643110300e06035504031307416e64726f6964820900c2e08746644a308d300c0603551d13040530030101ff300d06092a864886f70d010104050003820101006dd252ceef85302c360aaace939bcff2cca904bb5d7a1661f8ae46b2994204d0ff4a68c7ed1a531ec4595a623ce60763b167297a7ae35712c407f208f0cb109429124d7b106219c084ca3eb3f9ad5fb871ef92269a8be28bf16d44c8d9a08e6cb2f005bb3fe2cb96447e868e731076ad45b33f6009ea19c161e62641aa99271dfd5228c5c587875ddb7f452758d661f6cc0cccb7352e424cc4365c523532f7325137593c4ae341f4db41edda0d0b1071a7c440f0fe9ea01cb627ca674369d084bd2fd911ff06cdbf2cfa10dc0f893ae35762919048c7efc64c7144178342f70581c9de573af55b390dd7fdb9418631895d5f759f30112687ff621410c069308a"

    const-string v3, "com.android.vending"

    invoke-direct {v1, v3, v2}, Lcom/android/server/pm/permission/FlymePermissionHelper$ExternalSystemPackageInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 141
    sget-object v0, Lcom/android/server/pm/permission/FlymePermissionHelper;->sExtSysApkWhiteList:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/server/pm/permission/FlymePermissionHelper$ExternalSystemPackageInfo;

    const-string v3, "com.howie.gserverinstall"

    const-string v4, "3082019730820100a003020102020453db3661300d06092a864886f70d0101050500300f310d300b06035504031304776f6e673020170d3134303830313036343033335a180f32313134303730383036343033335a300f310d300b06035504031304776f6e6730819f300d06092a864886f70d010101050003818d0030818902818100b45f4fdf9b05adb3cc48871cb053056af1edaa449ad1bdfc45d29cff3e77ebd1435d253d7a7d05a62da744f8c7b98318c46d0421163d15c8a6aab83f5b00fbd2cdb2b5831593485f86e848305ae0f31950e002bbcdc2ffee4d65bf81861ded95e98d5bba05db4662c08613ac5b0a65fe46177f2dcff387232c00a6efa92231890203010001300d06092a864886f70d01010505000381810020bd0d1d07eafe262fb3513f08b8994b9519a6bb5c1af0cd31fe571c6c54f09f60b1d27d5583e6d6d8ae0e85cf389f82cb405b6a6fea2322620d91f3efe9f41cbb9b4f1e4f177b724da40f73efe107010ea7074686362df5c96d3252be7a91ddb01fba048b4fe31c59372cd3903bb809b7577b66b1df96edb0b8a90f2b55ade6"

    invoke-direct {v1, v3, v4}, Lcom/android/server/pm/permission/FlymePermissionHelper$ExternalSystemPackageInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    sget-object v0, Lcom/android/server/pm/permission/FlymePermissionHelper;->sExtSysApkWhiteList:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/server/pm/permission/FlymePermissionHelper$ExternalSystemPackageInfo;

    const-string v3, "com.meizu.flyme.flymebbs"

    const-string v4, "308203d7308202bfa003020102020900b8025912377deb24300d06092a864886f70d0101050500308181310b300906035504061302434e3112301006035504080c094775616e675a686f753114301206035504070c0b5a68754861692056696577310e300c060355040a0c054d65697a75310e300c060355040b0c054d65697a75310b300906035504030c026d78311b301906092a864886f70d010901160c6d78406d65697a752e636f6d301e170d3135303132333039323831365a170d3432303631303039323831365a308181310b300906035504061302434e3112301006035504080c094775616e675a686f753114301206035504070c0b5a68754861692056696577310e300c060355040a0c054d65697a75310e300c060355040b0c054d65697a75310b300906035504030c026d78311b301906092a864886f70d010901160c6d78406d65697a752e636f6d30820122300d06092a864886f70d01010105000382010f003082010a0282010100c52c4d380186ae6465b90b0fdd318c631a88571babd5d940949b180353b2843af0635375bd188d73d760fa7cd61960e7fbfb0fe0fe9fa8f18e802fe46f03c658088eeaf014099bd39486253e9753b382088c1e6474d962bd89a457ee288bfdf3fa4578c37e991947b0e8ece671bd50faa124b337e813ab4b9a6bfe633703164f9b0f7a8e6c0d87989730fdc3e402e944166f880cab096a765726599d78617778206e6a8bc1bb45ad9dbd9fcbf487ed51b6e4f3f1b69f4e5db8436612566f2c0cc9c8151f0e69ad741208e1de13513315cd4c66d0f8e21478efd154290aa420cdf14b62152a1ea894f051071f364945f4b1082ac5fa6f282de7f1e2f1e3e366850203010001a350304e301d0603551d0e04160414e4159e1a3f280e38e072f72eaac1153131539636301f0603551d23041830168014e4159e1a3f280e38e072f72eaac1153131539636300c0603551d13040530030101ff300d06092a864886f70d01010505000382010100996996e5906ec3513c9ec74c34019ede17eb999cfab752cb6e4f32bca5d5561464e8ccdfd8bf624efe222cc54441a5362ff23994c867428a3bb2f50c8b17b52ccfe0c71d6ca42bb66cd5b32d246a95b1648633035f9da4b30bc84d48e6c75ed446a207729193ddd24dfb9e8a2f0b74671a920ccfc9700a5de07be368aca721f90520c8d1a34869d6198b8d00ddb71f3379f8014c9bc4c51f08d717915fb59dfbcb214e845f6a8e0995b931307f5775235550dd65e663ea394436c0bef7363b5a2e314c440b8c036ee95c7526a963deaa1895491d6e499affb734563c61ba9c38a327a218f86e0c3aef108ba7850dfe5924cd831c5e6154a48d89905c43aca1da"

    invoke-direct {v1, v3, v4}, Lcom/android/server/pm/permission/FlymePermissionHelper$ExternalSystemPackageInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 145
    sget-object v0, Lcom/android/server/pm/permission/FlymePermissionHelper;->sExtSysApkWhiteList:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/server/pm/permission/FlymePermissionHelper$ExternalSystemPackageInfo;

    const-string v3, "com.google.android.gms"

    invoke-direct {v1, v3, v2}, Lcom/android/server/pm/permission/FlymePermissionHelper$ExternalSystemPackageInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 146
    sget-object v0, Lcom/android/server/pm/permission/FlymePermissionHelper;->sExtSysApkWhiteList:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/server/pm/permission/FlymePermissionHelper$ExternalSystemPackageInfo;

    const-string v3, "com.google.android.syncadapters.bookmarks"

    invoke-direct {v1, v3, v2}, Lcom/android/server/pm/permission/FlymePermissionHelper$ExternalSystemPackageInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    sget-object v0, Lcom/android/server/pm/permission/FlymePermissionHelper;->sExtSysApkWhiteList:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/server/pm/permission/FlymePermissionHelper$ExternalSystemPackageInfo;

    const-string v3, "com.google.android.syncadapters.calendar"

    invoke-direct {v1, v3, v2}, Lcom/android/server/pm/permission/FlymePermissionHelper$ExternalSystemPackageInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 149
    sget-object v0, Lcom/android/server/pm/permission/FlymePermissionHelper;->sExtSysApkWhiteList:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/server/pm/permission/FlymePermissionHelper$ExternalSystemPackageInfo;

    const-string v3, "com.google.android.syncadapters.contacts"

    invoke-direct {v1, v3, v2}, Lcom/android/server/pm/permission/FlymePermissionHelper$ExternalSystemPackageInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 150
    sget-object v0, Lcom/android/server/pm/permission/FlymePermissionHelper;->sExtSysApkWhiteList:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/server/pm/permission/FlymePermissionHelper$ExternalSystemPackageInfo;

    const-string v3, "com.google.android.feedback"

    invoke-direct {v1, v3, v2}, Lcom/android/server/pm/permission/FlymePermissionHelper$ExternalSystemPackageInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 151
    sget-object v0, Lcom/android/server/pm/permission/FlymePermissionHelper;->sExtSysApkWhiteList:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/server/pm/permission/FlymePermissionHelper$ExternalSystemPackageInfo;

    const-string v3, "com.google.android.gsf.login"

    invoke-direct {v1, v3, v2}, Lcom/android/server/pm/permission/FlymePermissionHelper$ExternalSystemPackageInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 153
    sget-object v0, Lcom/android/server/pm/permission/FlymePermissionHelper;->sExtSysApkWhiteList:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/server/pm/permission/FlymePermissionHelper$ExternalSystemPackageInfo;

    const-string v3, "com.google.android.gsf"

    invoke-direct {v1, v3, v2}, Lcom/android/server/pm/permission/FlymePermissionHelper$ExternalSystemPackageInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 154
    sget-object v0, Lcom/android/server/pm/permission/FlymePermissionHelper;->sExtSysApkWhiteList:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/server/pm/permission/FlymePermissionHelper$ExternalSystemPackageInfo;

    const-string v3, "com.google.android.backuptransport"

    invoke-direct {v1, v3, v2}, Lcom/android/server/pm/permission/FlymePermissionHelper$ExternalSystemPackageInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 156
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static compareSignatures([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)I
    .registers 8
    .param p0, "s1"  # [Landroid/content/pm/Signature;
    .param p1, "s2"  # [Landroid/content/pm/Signature;

    .line 169
    if-nez p0, :cond_8

    .line 170
    if-nez p1, :cond_6

    .line 171
    const/4 v0, 0x1

    goto :goto_7

    .line 172
    :cond_6
    const/4 v0, -0x1

    .line 170
    :goto_7
    return v0

    .line 174
    :cond_8
    if-nez p1, :cond_c

    .line 175
    const/4 v0, -0x2

    return v0

    .line 177
    :cond_c
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 178
    .local v0, "set1":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/pm/Signature;>;"
    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_14
    if-ge v3, v1, :cond_1e

    aget-object v4, p0, v3

    .line 179
    .local v4, "sig":Landroid/content/pm/Signature;
    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 178
    .end local v4  # "sig":Landroid/content/pm/Signature;
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    .line 181
    :cond_1e
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 182
    .local v1, "set2":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/pm/Signature;>;"
    array-length v3, p1

    move v4, v2

    :goto_25
    if-ge v4, v3, :cond_2f

    aget-object v5, p1, v4

    .line 183
    .local v5, "sig":Landroid/content/pm/Signature;
    invoke-virtual {v1, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 182
    .end local v5  # "sig":Landroid/content/pm/Signature;
    add-int/lit8 v4, v4, 0x1

    goto :goto_25

    .line 186
    :cond_2f
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_36

    .line 187
    return v2

    .line 189
    :cond_36
    const/4 v2, -0x3

    return v2
.end method

.method static isExternalSystemPackage(Landroid/content/pm/PackageParser$Package;)Z
    .registers 6
    .param p0, "pkg"  # Landroid/content/pm/PackageParser$Package;

    .line 159
    sget-object v0, Lcom/android/server/pm/permission/FlymePermissionHelper;->sExtSysApkWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/permission/FlymePermissionHelper$ExternalSystemPackageInfo;

    .line 160
    .local v1, "espi":Lcom/android/server/pm/permission/FlymePermissionHelper$ExternalSystemPackageInfo;
    iget-object v3, v1, Lcom/android/server/pm/permission/FlymePermissionHelper$ExternalSystemPackageInfo;->mPackageName:Ljava/lang/String;

    iget-object v4, p0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 161
    iget-object v0, v1, Lcom/android/server/pm/permission/FlymePermissionHelper$ExternalSystemPackageInfo;->mSignatures:[Landroid/content/pm/Signature;

    iget-object v3, p0, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iget-object v3, v3, Landroid/content/pm/PackageParser$SigningDetails;->signatures:[Landroid/content/pm/Signature;

    invoke-static {v0, v3}, Lcom/android/server/pm/permission/FlymePermissionHelper;->compareSignatures([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)I

    move-result v0

    if-nez v0, :cond_2a

    const/4 v2, 0x1

    :cond_2a
    return v2

    .line 164
    .end local v1  # "espi":Lcom/android/server/pm/permission/FlymePermissionHelper$ExternalSystemPackageInfo;
    :cond_2b
    goto :goto_6

    .line 165
    :cond_2c
    return v2
.end method
