.class public Lcom/android/settings/utils/ManagedServiceSettings$Config;
.super Ljava/lang/Object;
.source "ManagedServiceSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/utils/ManagedServiceSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Config"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/utils/ManagedServiceSettings$Config$Builder;
    }
.end annotation


# instance fields
.field public final configIntentAction:Ljava/lang/String;

.field public final emptyText:I

.field public final intentAction:Ljava/lang/String;

.field public final noun:Ljava/lang/String;

.field public final permission:Ljava/lang/String;

.field public final setting:Ljava/lang/String;

.field public final tag:Ljava/lang/String;

.field public final warningDialogSummary:I

.field public final warningDialogTitle:I


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V
    .registers 10

    .line 251
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 252
    iput-object p1, p0, Lcom/android/settings/utils/ManagedServiceSettings$Config;->tag:Ljava/lang/String;

    .line 253
    iput-object p2, p0, Lcom/android/settings/utils/ManagedServiceSettings$Config;->setting:Ljava/lang/String;

    .line 254
    iput-object p3, p0, Lcom/android/settings/utils/ManagedServiceSettings$Config;->intentAction:Ljava/lang/String;

    .line 255
    iput-object p5, p0, Lcom/android/settings/utils/ManagedServiceSettings$Config;->permission:Ljava/lang/String;

    .line 256
    iput-object p6, p0, Lcom/android/settings/utils/ManagedServiceSettings$Config;->noun:Ljava/lang/String;

    .line 257
    iput p7, p0, Lcom/android/settings/utils/ManagedServiceSettings$Config;->warningDialogTitle:I

    .line 258
    iput p8, p0, Lcom/android/settings/utils/ManagedServiceSettings$Config;->warningDialogSummary:I

    .line 259
    iput p9, p0, Lcom/android/settings/utils/ManagedServiceSettings$Config;->emptyText:I

    .line 260
    iput-object p4, p0, Lcom/android/settings/utils/ManagedServiceSettings$Config;->configIntentAction:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILcom/android/settings/utils/ManagedServiceSettings$1;)V
    .registers 11

    .line 238
    invoke-direct/range {p0 .. p9}, Lcom/android/settings/utils/ManagedServiceSettings$Config;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    return-void
.end method
