.class public Lcom/meizu/account/oauth/MzAuthException;
.super Ljava/lang/Exception;
.source "MzAuthException.java"


# instance fields
.field private accountName:Ljava/lang/String;

.field private code:I

.field private mHandleIntent:Landroid/content/Intent;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .registers 3

    .line 19
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 20
    iput p1, p0, Lcom/meizu/account/oauth/MzAuthException;->code:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 24
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 25
    iput p1, p0, Lcom/meizu/account/oauth/MzAuthException;->code:I

    .line 26
    iput-object p3, p0, Lcom/meizu/account/oauth/MzAuthException;->accountName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    .line 30
    invoke-direct {p0, p2, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 31
    iput p1, p0, Lcom/meizu/account/oauth/MzAuthException;->code:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Intent;)V
    .registers 2

    .line 14
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/meizu/account/oauth/MzAuthException;->mHandleIntent:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public getAccountName()Ljava/lang/String;
    .registers 1

    .line 60
    iget-object p0, p0, Lcom/meizu/account/oauth/MzAuthException;->accountName:Ljava/lang/String;

    return-object p0
.end method

.method public getCode()I
    .registers 1

    .line 52
    iget p0, p0, Lcom/meizu/account/oauth/MzAuthException;->code:I

    return p0
.end method

.method public getHandleIntent()Landroid/content/Intent;
    .registers 1

    .line 48
    iget-object p0, p0, Lcom/meizu/account/oauth/MzAuthException;->mHandleIntent:Landroid/content/Intent;

    return-object p0
.end method

.method public getMessage()Ljava/lang/String;
    .registers 2

    .line 39
    iget-object v0, p0, Lcom/meizu/account/oauth/MzAuthException;->mHandleIntent:Landroid/content/Intent;

    if-eqz v0, :cond_7

    const-string p0, "intent need to be handled."

    goto :goto_b

    :cond_7
    invoke-super {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    :goto_b
    return-object p0
.end method
