.class public Lcom/meizu/settings/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# static fields
.field public static final URI_MEIZU_ACCOUNT:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "content://com.meizu.account/account"

    .line 83
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/meizu/settings/Constants;->URI_MEIZU_ACCOUNT:Landroid/net/Uri;

    return-void
.end method
